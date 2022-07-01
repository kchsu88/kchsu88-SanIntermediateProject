.class public Lccsanandroidx/core/app/CoreComponentFactory;
.super Lccsanandroid/app/AppComponentFactory;
.source "CoreComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/CoreComponentFactory$CompatWrapped;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lccsanandroid/app/AppComponentFactory;-><init>()V

    return-void
.end method

.method static checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 80
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    instance-of v0, p0, Lccsanandroidx/core/app/CoreComponentFactory$CompatWrapped;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/app/CoreComponentFactory$CompatWrapped;

    invoke-interface {v0}, Lccsanandroidx/core/app/CoreComponentFactory$CompatWrapped;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "wrapper":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 83
    return-object v0

    .line 86
    .end local v0    # "wrapper":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p0
.end method


# virtual methods
.method public instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/app/Activity;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    return-object v0
.end method

.method public instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroid/app/Application;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cl",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2}, Lccsanandroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    return-object v0
.end method

.method public instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroid/content/ContentProvider;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cl",
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2}, Lccsanandroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Lccsanandroid/content/ContentProvider;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/ContentProvider;

    return-object v0
.end method

.method public instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/content/BroadcastReceiver;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 60
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/app/Service;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 75
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Lccsanandroid/content/Intent;)Lccsanandroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Service;

    return-object v0
.end method
