.class Lccsanandroidx/fragment/app/FragmentManagerImpl$6;
.super Lccsanandroidx/fragment/app/FragmentFactory;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Lccsanandroidx/fragment/app/FragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 2845
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$6;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;

    .line 2851
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$6;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$6;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lccsanandroidx/fragment/app/FragmentHostCallback;->instantiate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method
