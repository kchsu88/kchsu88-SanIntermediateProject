.class Lccsancom/applovin/impl/sdk/b/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/a/g;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lccsancom/applovin/impl/sdk/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b/b;Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->c:Lccsancom/applovin/impl/sdk/b/b;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b/b$4;->a:Lccsancom/applovin/impl/sdk/a/g;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/b/b$4;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->c:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->d(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->ap()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/b/b$4$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/b/b$4$1;-><init>(Lccsancom/applovin/impl/sdk/b/b$4;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$4;->c:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog$Builder;->show()Lccsanandroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b;Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;

    return-void
.end method
