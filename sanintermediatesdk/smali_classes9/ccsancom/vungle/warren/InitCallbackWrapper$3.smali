.class Lccsancom/vungle/warren/InitCallbackWrapper$3;
.super Ljava/lang/Object;
.source "InitCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/InitCallbackWrapper;->onAutoCacheAdAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/InitCallbackWrapper;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/InitCallbackWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/InitCallbackWrapper;

    .line 45
    iput-object p1, p0, Lccsancom/vungle/warren/InitCallbackWrapper$3;->this$0:Lccsancom/vungle/warren/InitCallbackWrapper;

    iput-object p2, p0, Lccsancom/vungle/warren/InitCallbackWrapper$3;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lccsancom/vungle/warren/InitCallbackWrapper$3;->this$0:Lccsancom/vungle/warren/InitCallbackWrapper;

    invoke-static {v0}, Lccsancom/vungle/warren/InitCallbackWrapper;->access$000(Lccsancom/vungle/warren/InitCallbackWrapper;)Lccsancom/vungle/warren/InitCallback;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/InitCallbackWrapper$3;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/InitCallback;->onAutoCacheAdAvailable(Ljava/lang/String;)V

    .line 49
    return-void
.end method
