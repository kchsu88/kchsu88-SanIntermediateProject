.class final Lccsancom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegates:Lccsancom/google/common/collect/ImmutableList;

.field final synthetic val$localI:I

.field final synthetic val$state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 898
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$delegates:Lccsancom/google/common/collect/ImmutableList;

    iput p3, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 901
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$delegates:Lccsancom/google/common/collect/ImmutableList;

    iget v2, p0, Lccsancom/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-static {v0, v1, v2}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$300(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/collect/ImmutableList;I)V

    .line 902
    return-void
.end method
