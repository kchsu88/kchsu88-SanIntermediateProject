.class public interface abstract Lccsanandroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/ThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackgroundCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract loadTile(II)V
.end method

.method public abstract recycleTile(Lccsanandroidx/recyclerview/widget/TileList$Tile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract refresh(I)V
.end method

.method public abstract updateRange(IIIII)V
.end method
