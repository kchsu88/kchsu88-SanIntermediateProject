.class public Lccsancom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;
.super Lccsancom/bumptech/glide/load/data/AssetPathFetcher;
.source "FileDescriptorAssetPathFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/data/AssetPathFetcher<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "assetManager"    # Lccsanandroid/content/res/AssetManager;
    .param p2, "assetPath"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/AssetPathFetcher;-><init>(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected close(Lccsanandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "data"    # Lccsanandroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lccsanandroid/os/ParcelFileDescriptor;->close()V

    .line 24
    return-void
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;->close(Lccsanandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method protected loadResource(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "assetManager"    # Lccsanandroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-virtual {p1, p2}, Lccsanandroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Lccsanandroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadResource(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lccsanandroid/content/res/AssetManager;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lccsancom/bumptech/glide/load/data/FileDescriptorAssetPathFetcher;->loadResource(Lccsanandroid/content/res/AssetManager;Ljava/lang/String;)Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method
