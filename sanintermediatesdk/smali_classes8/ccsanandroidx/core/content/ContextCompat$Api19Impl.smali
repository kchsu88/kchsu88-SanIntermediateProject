.class Lccsanandroidx/core/content/ContextCompat$Api19Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api19Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    return-void
.end method

.method static getExternalCacheDirs(Lccsanandroid/content/Context;)[Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 840
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getExternalFilesDirs(Lccsanandroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "type"
        }
    .end annotation

    .line 845
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getObbDirs(Lccsanandroid/content/Context;)[Ljava/io/File;
    .locals 1
    .param p0, "obj"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
