.class public Lccsancom/bumptech/glide/load/engine/ErrorWrappingGlideException;
.super Ljava/lang/Exception;
.source "ErrorWrappingGlideException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Error;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Error;

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 9
    if-eqz p1, :cond_0

    .line 12
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The causing error must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCause()Ljava/lang/Error;
    .locals 1

    .line 17
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/ErrorWrappingGlideException;->getCause()Ljava/lang/Error;

    move-result-object v0

    return-object v0
.end method
