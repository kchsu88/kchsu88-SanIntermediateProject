.class final Lccsancom/google/common/util/concurrent/AbstractService$IsStartableGuard;
.super Lccsancom/google/common/util/concurrent/Monitor$Guard;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IsStartableGuard"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/AbstractService;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/AbstractService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractService$IsStartableGuard;->this$0:Lccsancom/google/common/util/concurrent/AbstractService;

    .line 126
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/AbstractService;->access$000(Lccsancom/google/common/util/concurrent/AbstractService;)Lccsancom/google/common/util/concurrent/Monitor;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/Monitor$Guard;-><init>(Lccsancom/google/common/util/concurrent/Monitor;)V

    .line 127
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$IsStartableGuard;->this$0:Lccsancom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractService;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
