.class final Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateCancelledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 134
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;->cancel(Z)Z

    .line 136
    return-void
.end method
