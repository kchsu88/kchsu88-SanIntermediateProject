.class Lccsanandroidx/core/provider/FontRequestWorker$4;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lccsanandroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/provider/FontRequestWorker;->requestFontAsync(Lccsanandroid/content/Context;Lccsanandroidx/core/provider/FontRequest;ILjava/util/concurrent/Executor;Lccsanandroidx/core/provider/CallbackWithHandler;)Lccsanandroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/core/util/Consumer<",
        "Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$id"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lccsanandroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;)V
    .locals 4
    .param p1, "typefaceResult"    # Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typefaceResult"
        }
    .end annotation

    .line 204
    sget-object v0, Lccsanandroidx/core/provider/FontRequestWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lccsanandroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Lccsanandroidx/collection/SimpleArrayMap;

    iget-object v2, p0, Lccsanandroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 206
    .local v1, "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/util/Consumer<Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    if-nez v1, :cond_0

    .line 207
    monitor-exit v0

    return-void

    .line 209
    :cond_0
    sget-object v2, Lccsanandroidx/core/provider/FontRequestWorker;->PENDING_REPLIES:Lccsanandroidx/collection/SimpleArrayMap;

    iget-object v3, p0, Lccsanandroidx/core/provider/FontRequestWorker$4;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsanandroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 212
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Consumer;

    invoke-interface {v2, p1}, Lccsanandroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 210
    .end local v1    # "replies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/util/Consumer<Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "typefaceResult"
        }
    .end annotation

    .line 200
    check-cast p1, Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;

    invoke-virtual {p0, p1}, Lccsanandroidx/core/provider/FontRequestWorker$4;->accept(Lccsanandroidx/core/provider/FontRequestWorker$TypefaceResult;)V

    return-void
.end method
