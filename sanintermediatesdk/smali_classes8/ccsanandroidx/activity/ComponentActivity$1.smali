.class Lccsanandroidx/activity/ComponentActivity$1;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/activity/ComponentActivity;
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

    .line 69
    iput-object p1, p0, Lccsanandroidx/activity/ComponentActivity$1;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 72
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity$1;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-static {v0}, Lccsanandroidx/activity/ComponentActivity;->access$001(Lccsanandroidx/activity/ComponentActivity;)V

    .line 73
    return-void
.end method
