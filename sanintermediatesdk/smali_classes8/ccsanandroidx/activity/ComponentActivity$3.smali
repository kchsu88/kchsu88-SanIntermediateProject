.class Lccsanandroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Lccsanandroidx/activity/ComponentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/activity/ComponentActivity;

    .line 108
    iput-object p1, p0, Lccsanandroidx/activity/ComponentActivity$3;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 112
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 113
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity$3;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Lccsanandroidx/activity/ComponentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity$3;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Lccsanandroidx/activity/ComponentActivity;->getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/lifecycle/ViewModelStore;->clear()V

    .line 117
    :cond_0
    return-void
.end method
