.class public Lccsancom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Lccsanandroid/graphics/Typeface;

.field public final fontFamily:Ljava/lang/String;

.field private final fontFamilyResourceId:I

.field private fontResolved:Z

.field public final hasLetterSpacing:Z

.field public final letterSpacing:F

.field public final shadowColor:Lccsanandroid/content/res/ColorStateList;

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field public final textColor:Lccsanandroid/content/res/ColorStateList;

.field public final textColorHint:Lccsanandroid/content/res/ColorStateList;

.field public final textColorLink:Lccsanandroid/content/res/ColorStateList;

.field public textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "id"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 81
    sget-object v1, Lccsancom/google/android/material/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 83
    .local v1, "a":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textSize:F

    .line 84
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    .line 85
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textColor:Lccsanandroid/content/res/ColorStateList;

    .line 87
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    .line 88
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textColorHint:Lccsanandroid/content/res/ColorStateList;

    .line 90
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    .line 91
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textColorLink:Lccsanandroid/content/res/ColorStateList;

    .line 93
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    .line 94
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->typeface:I

    .line 95
    sget v2, Lccsancom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    .line 96
    invoke-static {v1, v2, v4}, Lccsancom/google/android/material/resources/MaterialResources;->getIndexWithValue(Lccsanandroid/content/res/TypedArray;II)I

    move-result v2

    .line 100
    .local v2, "fontFamilyIndex":I
    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    .line 101
    invoke-virtual {v1, v2}, Lccsanandroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    .line 102
    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v4, v0}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    .line 103
    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    .line 104
    invoke-static {p1, v1, v4}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowColor:Lccsanandroid/content/res/ColorStateList;

    .line 106
    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowDx:F

    .line 107
    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowDy:F

    .line 108
    sget v4, Lccsancom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowRadius:F

    .line 110
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 112
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 113
    sget-object v0, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {v1, v0}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    .line 115
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    invoke-virtual {v1, v0, v3}, Lccsanandroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->letterSpacing:F

    .line 116
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 118
    :cond_0
    iput-boolean v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    .line 119
    iput v3, p0, Lccsancom/google/android/material/resources/TextAppearance;->letterSpacing:F

    .line 121
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/resources/TextAppearance;)Lccsanandroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/resources/TextAppearance;

    .line 48
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$002(Lccsancom/google/android/material/resources/TextAppearance;Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/resources/TextAppearance;
    .param p1, "x1"    # Lccsanandroid/graphics/Typeface;

    .line 48
    iput-object p1, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$102(Lccsancom/google/android/material/resources/TextAppearance;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/resources/TextAppearance;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    return p1
.end method

.method private createFallbackFont()V
    .locals 2

    .line 268
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Lccsanandroid/graphics/Typeface;->create(Ljava/lang/String;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 273
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 274
    iget v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->typeface:I

    packed-switch v0, :pswitch_data_0

    .line 285
    sget-object v0, Lccsanandroid/graphics/Typeface;->DEFAULT:Lccsanandroid/graphics/Typeface;

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    goto :goto_0

    .line 282
    :pswitch_0
    sget-object v0, Lccsanandroid/graphics/Typeface;->MONOSPACE:Lccsanandroid/graphics/Typeface;

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 283
    goto :goto_0

    .line 279
    :pswitch_1
    sget-object v0, Lccsanandroid/graphics/Typeface;->SERIF:Lccsanandroid/graphics/Typeface;

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 280
    goto :goto_0

    .line 276
    :pswitch_2
    sget-object v0, Lccsanandroid/graphics/Typeface;->SANS_SERIF:Lccsanandroid/graphics/Typeface;

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 277
    nop

    .line 288
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 290
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldLoadFontSynchronously(Lccsanandroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 357
    invoke-static {}, Lccsancom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFallbackFont()Lccsanandroid/graphics/Typeface;
    .locals 1

    .line 262
    invoke-direct {p0}, Lccsancom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 263
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    return-object v0
.end method

.method public getFont(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Typeface;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 131
    iget-boolean v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :try_start_0
    iget v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    invoke-static {p1, v0}, Lccsanandroidx/core/content/res/ResourcesCompat;->getFont(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    .line 139
    if-eqz v0, :cond_1

    .line 140
    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {v0, v1}, Lccsanandroid/graphics/Typeface;->create(Lccsanandroid/graphics/Typeface;I)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextAppearance"

    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 150
    :cond_1
    :goto_0
    invoke-direct {p0}, Lccsancom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 153
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    return-object v0
.end method

.method public getFontAsync(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "textPaint"    # Lccsanandroid/text/TextPaint;
    .param p3, "callback"    # Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    .line 234
    invoke-virtual {p0}, Lccsancom/google/android/material/resources/TextAppearance;->getFallbackFont()Lccsanandroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lccsancom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Lccsanandroid/text/TextPaint;Lccsanandroid/graphics/Typeface;)V

    .line 236
    new-instance v0, Lccsancom/google/android/material/resources/TextAppearance$2;

    invoke-direct {v0, p0, p2, p3}, Lccsancom/google/android/material/resources/TextAppearance$2;-><init>(Lccsancom/google/android/material/resources/TextAppearance;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/resources/TextAppearance;->getFontAsync(Lccsanandroid/content/Context;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 251
    return-void
.end method

.method public getFontAsync(Lccsanandroid/content/Context;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "callback"    # Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    .line 171
    invoke-direct {p0, p1}, Lccsancom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/resources/TextAppearance;->getFont(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Typeface;

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    .line 178
    :goto_0
    iget v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 180
    iput-boolean v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 183
    :cond_1
    iget-boolean v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    if-eqz v2, :cond_2

    .line 184
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->font:Lccsanandroid/graphics/Typeface;

    invoke-virtual {p2, v0, v1}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Lccsanandroid/graphics/Typeface;Z)V

    .line 185
    return-void

    .line 190
    :cond_2
    :try_start_0
    new-instance v2, Lccsancom/google/android/material/resources/TextAppearance$1;

    invoke-direct {v2, p0, p2}, Lccsancom/google/android/material/resources/TextAppearance$1;-><init>(Lccsancom/google/android/material/resources/TextAppearance;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lccsanandroidx/core/content/res/ResourcesCompat;->getFont(Lccsanandroid/content/Context;ILccsanandroidx/core/content/res/ResourcesCompat$FontCallback;Lccsanandroid/os/Handler;)V
    :try_end_0
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading font "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextAppearance"

    invoke-static {v3, v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    iput-boolean v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 215
    const/4 v1, -0x3

    invoke-virtual {p2, v1}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    goto :goto_2

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "e":Lccsanandroid/content/res/Resources$NotFoundException;
    iput-boolean v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->fontResolved:Z

    .line 211
    invoke-virtual {p2, v1}, Lccsancom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    .line 216
    .end local v0    # "e":Lccsanandroid/content/res/Resources$NotFoundException;
    :goto_1
    nop

    .line 217
    :goto_2
    return-void
.end method

.method public updateDrawState(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "textPaint"    # Lccsanandroid/text/TextPaint;
    .param p3, "callback"    # Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/resources/TextAppearance;->updateMeasureState(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 304
    iget-object v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->textColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lccsanandroid/text/TextPaint;->drawableState:[I

    iget-object v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->textColor:Lccsanandroid/content/res/ColorStateList;

    .line 306
    invoke-virtual {v2}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 304
    :goto_0
    invoke-virtual {p2, v0}, Lccsanandroid/text/TextPaint;->setColor(I)V

    .line 308
    iget v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowDx:F

    iget v2, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowDy:F

    iget-object v3, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowColor:Lccsanandroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    iget-object v4, p2, Lccsanandroid/text/TextPaint;->drawableState:[I

    iget-object v5, p0, Lccsancom/google/android/material/resources/TextAppearance;->shadowColor:Lccsanandroid/content/res/ColorStateList;

    .line 313
    invoke-virtual {v5}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 308
    :goto_1
    invoke-virtual {p2, v0, v1, v2, v3}, Lccsanandroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 315
    return-void
.end method

.method public updateMeasureState(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "textPaint"    # Lccsanandroid/text/TextPaint;
    .param p3, "callback"    # Lccsancom/google/android/material/resources/TextAppearanceFontCallback;

    .line 327
    invoke-direct {p0, p1}, Lccsancom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/resources/TextAppearance;->getFont(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lccsancom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Lccsanandroid/text/TextPaint;Lccsanandroid/graphics/Typeface;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/resources/TextAppearance;->getFontAsync(Lccsanandroid/content/Context;Lccsanandroid/text/TextPaint;Lccsancom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 332
    :goto_0
    return-void
.end method

.method public updateTextPaintMeasureState(Lccsanandroid/text/TextPaint;Lccsanandroid/graphics/Typeface;)V
    .locals 3
    .param p1, "textPaint"    # Lccsanandroid/text/TextPaint;
    .param p2, "typeface"    # Lccsanandroid/graphics/Typeface;

    .line 341
    invoke-virtual {p1, p2}, Lccsanandroid/text/TextPaint;->setTypeface(Lccsanandroid/graphics/Typeface;)Lccsanandroid/graphics/Typeface;

    .line 343
    iget v0, p0, Lccsancom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-virtual {p2}, Lccsanandroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    .line 344
    .local v0, "fake":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lccsanandroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 345
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/high16 v1, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Lccsanandroid/text/TextPaint;->setTextSkewX(F)V

    .line 347
    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->textSize:F

    invoke-virtual {p1, v1}, Lccsanandroid/text/TextPaint;->setTextSize(F)V

    .line 349
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 350
    iget-boolean v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    if-eqz v1, :cond_2

    .line 351
    iget v1, p0, Lccsancom/google/android/material/resources/TextAppearance;->letterSpacing:F

    invoke-virtual {p1, v1}, Lccsanandroid/text/TextPaint;->setLetterSpacing(F)V

    .line 354
    :cond_2
    return-void
.end method
