.class public Lccsanandroidx/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;,
        Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Lccsanandroid/view/View;

.field private final mContext:Lccsanandroid/content/Context;

.field private mDragListener:Lccsanandroid/view/View$OnTouchListener;

.field private final mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field mMenuItemClickListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field mOnDismissListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;

.field final mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "anchor"    # Lccsanandroid/view/View;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/PopupMenu;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;I)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "anchor"    # Lccsanandroid/view/View;
    .param p3, "gravity"    # I

    .line 83
    sget v4, Lccsanandroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/PopupMenu;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;III)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;III)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "anchor"    # Lccsanandroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mContext:Lccsanandroid/content/Context;

    .line 106
    iput-object p2, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mAnchor:Lccsanandroid/view/View;

    .line 108
    new-instance v2, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v2, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;-><init>(Lccsanandroid/content/Context;)V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 109
    new-instance v0, Lccsanandroidx/appcompat/widget/PopupMenu$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/PopupMenu$1;-><init>(Lccsanandroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v2, v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->setCallback(Lccsanandroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 123
    new-instance v7, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V

    iput-object v7, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    .line 124
    invoke-virtual {v7, p3}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 125
    new-instance v0, Lccsanandroidx/appcompat/widget/PopupMenu$2;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/PopupMenu$2;-><init>(Lccsanandroidx/appcompat/widget/PopupMenu;)V

    invoke-virtual {v7, v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 247
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    .line 248
    return-void
.end method

.method public getDragToOpenListener()Lccsanandroid/view/View$OnTouchListener;
    .locals 2

    .line 174
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mDragListener:Lccsanandroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lccsanandroidx/appcompat/widget/PopupMenu$3;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mAnchor:Lccsanandroid/view/View;

    invoke-direct {v0, p0, v1}, Lccsanandroidx/appcompat/widget/PopupMenu$3;-><init>(Lccsanandroidx/appcompat/widget/PopupMenu;Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mDragListener:Lccsanandroid/view/View$OnTouchListener;

    .line 196
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mDragListener:Lccsanandroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 153
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public getMenu()Lccsanandroid/view/Menu;
    .locals 1

    .line 209
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Lccsanandroid/view/MenuInflater;
    .locals 2

    .line 219
    new-instance v0, Lccsanandroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mContext:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/view/SupportMenuInflater;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method

.method getMenuListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 306
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public inflate(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .line 229
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/PopupMenu;->getMenuInflater()Lccsanandroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/view/MenuInflater;->inflate(ILccsanandroid/view/Menu;)V

    .line 230
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 145
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 146
    return-void
.end method

.method public setOnDismissListener(Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;

    .line 266
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mOnDismissListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnDismissListener;

    .line 267
    return-void
.end method

.method public setOnMenuItemClickListener(Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 257
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lccsanandroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    .line 258
    return-void
.end method

.method public show()V
    .locals 1

    .line 238
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/PopupMenu;->mPopup:Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    .line 239
    return-void
.end method
