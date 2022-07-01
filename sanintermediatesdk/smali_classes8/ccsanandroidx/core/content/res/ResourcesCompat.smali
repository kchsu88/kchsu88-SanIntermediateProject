.class public final Lccsanandroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/content/res/ResourcesCompat$ThemeCompat;,
        Lccsanandroidx/core/content/res/ResourcesCompat$ImplApi29;,
        Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;,
        Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;,
        Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    }
.end annotation


# static fields
.field public static final ID_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p0, "key"    # Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    .param p1, "resId"    # I
    .param p2, "value"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "resId",
            "value"
        }
    .end annotation

    .line 258
    sget-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    sget-object v1, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/util/SparseArray;

    .line 260
    .local v2, "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    if-nez v2, :cond_0

    .line 261
    new-instance v3, Lccsanandroid/util/SparseArray;

    invoke-direct {v3}, Lccsanandroid/util/SparseArray;-><init>()V

    move-object v2, v3

    .line 262
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    new-instance v1, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    iget-object v3, p0, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Lccsanandroid/content/res/Resources;

    .line 265
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/content/res/Configuration;)V

    .line 264
    invoke-virtual {v2, p1, v1}, Lccsanandroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 266
    .end local v2    # "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getCachedColorStateList(Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Lccsanandroid/content/res/ColorStateList;
    .locals 5
    .param p0, "key"    # Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "resId"
        }
    .end annotation

    .line 237
    sget-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    sget-object v1, Lccsanandroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/SparseArray;

    .line 239
    .local v1, "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 240
    invoke-virtual {v1, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 241
    .local v2, "entry":Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;
    if-eqz v2, :cond_1

    .line 242
    iget-object v3, v2, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Lccsanandroid/content/res/Configuration;

    iget-object v4, p0, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Lccsanandroid/content/res/Resources;

    invoke-virtual {v4}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Configuration;->equals(Lccsanandroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, v2, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Lccsanandroid/content/res/ColorStateList;

    monitor-exit v0

    return-object v3

    .line 247
    :cond_0
    invoke-virtual {v1, p1}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 251
    .end local v1    # "entries":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    .end local v2    # "entry":Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;
    :cond_1
    monitor-exit v0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCachedFont(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    return-object v0

    .line 399
    :cond_0
    new-instance v3, Lccsanandroid/util/TypedValue;

    invoke-direct {v3}, Lccsanandroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/content/res/ResourcesCompat;->loadFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)I
    .locals 2
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "id",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 166
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/res/Resources;->getColor(ILccsanandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;
    .locals 3
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "id",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 193
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/res/Resources;->getColorStateList(ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    invoke-direct {v0, p0, p2}, Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/Resources$Theme;)V

    .line 200
    .local v0, "key":Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    invoke-static {v0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat;->getCachedColorStateList(Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 201
    .local v1, "csl":Lccsanandroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 202
    return-object v1

    .line 205
    :cond_1
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/content/res/ResourcesCompat;->inflateColorStateList(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_2

    .line 208
    invoke-static {v0, p1, v1}, Lccsanandroidx/core/content/res/ResourcesCompat;->addColorStateListToCache(Lccsanandroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILccsanandroid/content/res/ColorStateList;)V

    .line 209
    return-object v1

    .line 212
    :cond_2
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getColorStateList(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method public static getDrawable(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "id",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 103
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/res/Resources;->getDrawable(ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Lccsanandroid/content/res/Resources;IILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "id",
            "density",
            "theme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 136
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getDrawableForDensity(IILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 139
    invoke-virtual {p0, p1, p2}, Lccsanandroid/content/res/Resources;->getDrawableForDensity(II)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Lccsanandroid/content/res/Resources;I)F
    .locals 4
    .param p0, "res"    # Lccsanandroid/content/res/Resources;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "id"
        }
    .end annotation

    .line 331
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 332
    invoke-static {p0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat$ImplApi29;->getFloat(Lccsanandroid/content/res/Resources;I)F

    move-result v0

    return v0

    .line 335
    :cond_0
    invoke-static {}, Lccsanandroidx/core/content/res/ResourcesCompat;->getTypedValue()Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 336
    .local v0, "value":Lccsanandroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 337
    iget v1, v0, Lccsanandroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 338
    invoke-virtual {v0}, Lccsanandroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1

    .line 340
    :cond_1
    new-instance v1, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lccsanandroid/util/TypedValue;->type:I

    .line 341
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFont(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 370
    :cond_0
    new-instance v3, Lccsanandroid/util/TypedValue;

    invoke-direct {v3}, Lccsanandroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/content/res/ResourcesCompat;->loadFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;)Lccsanandroid/graphics/Typeface;
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .param p2, "value"    # Lccsanandroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "value",
            "style",
            "fontCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 509
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/content/res/ResourcesCompat;->loadFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Lccsanandroid/content/Context;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;)V
    .locals 9
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .param p2, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "fontCallback",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 488
    invoke-static {p2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {p0}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const/4 v0, -0x4

    invoke-virtual {p2, v0, p3}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V

    .line 492
    return-void

    .line 494
    :cond_0
    new-instance v3, Lccsanandroid/util/TypedValue;

    invoke-direct {v3}, Lccsanandroid/util/TypedValue;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/content/res/ResourcesCompat;->loadFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;

    .line 496
    return-void
.end method

.method private static getTypedValue()Lccsanandroid/util/TypedValue;
    .locals 3

    .line 278
    sget-object v0, Lccsanandroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/TypedValue;

    .line 279
    .local v1, "tv":Lccsanandroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 280
    new-instance v2, Lccsanandroid/util/TypedValue;

    invoke-direct {v2}, Lccsanandroid/util/TypedValue;-><init>()V

    move-object v1, v2

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-object v1
.end method

.method private static inflateColorStateList(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;
    .locals 5
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Lccsanandroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "resId",
            "theme"
        }
    .end annotation

    .line 221
    invoke-static {p0, p1}, Lccsanandroidx/core/content/res/ResourcesCompat;->isColorInt(Lccsanandroid/content/res/Resources;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    return-object v1

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 227
    .local v0, "xml":Lccsanorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {p0, v0, p2}, Lccsanandroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Lccsanandroid/content/res/Resources;Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ResourcesCompat"

    const-string v4, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v3, v4, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static isColorInt(Lccsanandroid/content/res/Resources;I)Z
    .locals 4
    .param p0, "resources"    # Lccsanandroid/content/res/Resources;
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "resId"
        }
    .end annotation

    .line 270
    invoke-static {}, Lccsanandroidx/core/content/res/ResourcesCompat;->getTypedValue()Lccsanandroid/util/TypedValue;

    move-result-object v0

    .line 271
    .local v0, "value":Lccsanandroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 272
    iget v2, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    iget v2, v0, Lccsanandroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static loadFont(Lccsanandroid/content/Context;ILccsanandroid/util/TypedValue;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;
    .locals 12
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .param p2, "value"    # Lccsanandroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p5, "handler"    # Lccsanandroid/os/Handler;
    .param p6, "isRequestFromLayoutInflator"    # Z
    .param p7, "isCachedOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "value",
            "style",
            "fontCallback",
            "handler",
            "isRequestFromLayoutInflator",
            "isCachedOnly"
        }
    .end annotation

    .line 529
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v9

    .line 530
    .local v9, "resources":Lccsanandroid/content/res/Resources;
    const/4 v0, 0x1

    move v10, p1

    move-object v11, p2

    invoke-virtual {v9, p1, p2, v0}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 531
    move-object v0, p0

    move-object v1, v9

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lccsanandroidx/core/content/res/ResourcesCompat;->loadFont(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/util/TypedValue;IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    .line 533
    .local v0, "typeface":Lccsanandroid/graphics/Typeface;
    if-nez v0, :cond_1

    if-nez p4, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v1, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be retrieved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static loadFont(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Lccsanandroid/util/TypedValue;IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;ZZ)Lccsanandroid/graphics/Typeface;
    .locals 19
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "wrapper"    # Lccsanandroid/content/res/Resources;
    .param p2, "value"    # Lccsanandroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p6, "handler"    # Lccsanandroid/os/Handler;
    .param p7, "isRequestFromLayoutInflator"    # Z
    .param p8, "isCachedOnly"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "wrapper",
            "value",
            "id",
            "style",
            "fontCallback",
            "handler",
            "isRequestFromLayoutInflator",
            "isCachedOnly"
        }
    .end annotation

    .line 559
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    const-string v15, "ResourcesCompat"

    iget-object v0, v10, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 564
    iget-object v0, v10, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, "file":Ljava/lang/String;
    const-string v0, "res/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, -0x3

    const/16 v16, 0x0

    if-nez v0, :cond_1

    .line 567
    if-eqz v13, :cond_0

    .line 568
    invoke-virtual {v13, v7, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V

    .line 571
    :cond_0
    return-object v16

    .line 573
    :cond_1
    invoke-static {v9, v11, v12}, Lccsanandroidx/core/graphics/TypefaceCompat;->findFromCache(Lccsanandroid/content/res/Resources;II)Lccsanandroid/graphics/Typeface;

    move-result-object v6

    .line 575
    .local v6, "typeface":Lccsanandroid/graphics/Typeface;
    if-eqz v6, :cond_3

    .line 576
    if-eqz v13, :cond_2

    .line 577
    invoke-virtual {v13, v6, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V

    .line 579
    :cond_2
    return-object v6

    .line 580
    :cond_3
    if-eqz p8, :cond_4

    .line 581
    return-object v16

    .line 585
    :cond_4
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    if-eqz v0, :cond_7

    .line 586
    :try_start_1
    invoke-virtual {v9, v11}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 587
    .local v0, "rp":Lccsanandroid/content/res/XmlResourceParser;
    nop

    .line 588
    invoke-static {v0, v9}, Lccsanandroidx/core/content/res/FontResourcesParserCompat;->parse(Lccsanorg/xmlpull/v1/XmlPullParser;Lccsanandroid/content/res/Resources;)Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1
    :try_end_1
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v17, v1

    .line 589
    .local v17, "familyEntry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    if-nez v17, :cond_6

    .line 590
    :try_start_2
    const-string v1, "Failed to find font-family tag"

    invoke-static {v15, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v13, :cond_5

    .line 592
    invoke-virtual {v13, v7, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V
    :try_end_2
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 595
    :cond_5
    return-object v16

    .line 613
    .end local v0    # "rp":Lccsanandroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v8

    goto/16 :goto_3

    .line 611
    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    move-object v10, v8

    goto/16 :goto_4

    .line 597
    .restart local v0    # "rp":Lccsanandroid/content/res/XmlResourceParser;
    .restart local v17    # "familyEntry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v18, v6

    .end local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .local v18, "typeface":Lccsanandroid/graphics/Typeface;
    move-object/from16 v6, p5

    const/4 v10, -0x3

    move-object/from16 v7, p6

    move-object v10, v8

    .end local v8    # "file":Ljava/lang/String;
    .local v10, "file":Ljava/lang/String;
    move/from16 v8, p7

    :try_start_3
    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Lccsanandroid/content/Context;Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Lccsanandroid/content/res/Resources;IILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;Z)Lccsanandroid/graphics/Typeface;

    move-result-object v1
    :try_end_3
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v1

    .line 613
    .end local v0    # "rp":Lccsanandroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Lccsanandroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    .line 611
    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    .line 613
    .end local v10    # "file":Ljava/lang/String;
    .end local v18    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v8    # "file":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v18, v6

    move-object v10, v8

    move-object/from16 v1, p0

    goto :goto_3

    .line 611
    :catch_5
    move-exception v0

    move-object/from16 v18, v6

    move-object v10, v8

    move-object/from16 v1, p0

    goto :goto_4

    .line 600
    :cond_7
    move-object/from16 v18, v6

    move-object v10, v8

    .end local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .end local v8    # "file":Ljava/lang/String;
    .restart local v10    # "file":Ljava/lang/String;
    .restart local v18    # "typeface":Lccsanandroid/graphics/Typeface;
    move-object/from16 v1, p0

    :try_start_4
    invoke-static {v1, v9, v11, v10, v12}, Lccsanandroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;ILjava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0
    :try_end_4
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v6, v0

    .line 602
    .end local v18    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    if-eqz v13, :cond_9

    .line 603
    if-eqz v6, :cond_8

    .line 604
    :try_start_5
    invoke-virtual {v13, v6, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Lccsanandroid/graphics/Typeface;Lccsanandroid/os/Handler;)V

    goto :goto_0

    .line 606
    :cond_8
    const/4 v2, -0x3

    invoke-virtual {v13, v2, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V
    :try_end_5
    .catch Lccsanorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 613
    :catch_6
    move-exception v0

    goto :goto_3

    .line 611
    :catch_7
    move-exception v0

    goto :goto_4

    .line 610
    :cond_9
    :goto_0
    return-object v6

    .line 613
    .end local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v18    # "typeface":Lccsanandroid/graphics/Typeface;
    :catch_8
    move-exception v0

    :goto_1
    move-object/from16 v6, v18

    goto :goto_3

    .line 611
    :catch_9
    move-exception v0

    :goto_2
    move-object/from16 v6, v18

    goto :goto_4

    .line 613
    .end local v10    # "file":Ljava/lang/String;
    .end local v18    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .restart local v8    # "file":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v18, v6

    move-object v10, v8

    .line 614
    .end local v8    # "file":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v10    # "file":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read xml resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 611
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/lang/String;
    .restart local v8    # "file":Ljava/lang/String;
    :catch_b
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v18, v6

    move-object v10, v8

    .line 612
    .end local v8    # "file":Ljava/lang/String;
    .local v0, "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "file":Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse xml resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0    # "e":Lccsanorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 616
    :goto_5
    if-eqz v13, :cond_a

    .line 617
    const/4 v2, -0x3

    invoke-virtual {v13, v2, v14}, Lccsanandroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILccsanandroid/os/Handler;)V

    .line 620
    :cond_a
    return-object v16

    .line 560
    .end local v6    # "typeface":Lccsanandroid/graphics/Typeface;
    .end local v10    # "file":Ljava/lang/String;
    :cond_b
    move-object/from16 v1, p0

    new-instance v0, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Lccsanandroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is not a Font: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
