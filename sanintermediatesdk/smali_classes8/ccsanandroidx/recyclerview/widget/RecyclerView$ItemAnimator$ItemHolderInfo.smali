.class public Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13426
    return-void
.end method


# virtual methods
.method public setFrom(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "holder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 13437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 2
    .param p1, "holder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 13453
    iget-object v0, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    .line 13454
    .local v0, "view":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 13455
    invoke-virtual {v0}, Lccsanandroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 13456
    invoke-virtual {v0}, Lccsanandroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 13457
    invoke-virtual {v0}, Lccsanandroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    .line 13458
    return-object p0
.end method
