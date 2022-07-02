.class final Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;
.super Lccsanandroidx/appcompat/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Lccsanandroid/widget/PopupWindow$OnDismissListener;
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;
.implements Lccsanandroidx/appcompat/view/menu/MenuPresenter;
.implements Lccsanandroid/view/View$OnKeyListener;


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

.field private mAnchorView:Lccsanandroid/view/View;

.field private final mAttachStateChangeListener:Lccsanandroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Lccsanandroid/content/Context;

.field private mDropDownGravity:I

.field final mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Lccsanandroid/view/View;

.field mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_popup_menu_item_layout:I

    sput v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;IIZ)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Lccsanandroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .line 117
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/MenuPopup;-><init>()V

    .line 60
    new-instance v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$1;-><init>(Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    new-instance v0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Lccsanandroid/view/View$OnAttachStateChangeListener;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 118
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Lccsanandroid/content/Context;

    .line 119
    iput-object p2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 120
    iput-boolean p6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 121
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    new-instance v1, Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    sget v2, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    invoke-direct {v1, p2, v0, p6, v2}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;-><init>(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    .line 123
    iput p4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    .line 124
    iput p5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 126
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 127
    .local v1, "res":Lccsanandroid/content/res/Resources;
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lccsanandroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 128
    invoke-virtual {v1, v3}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 130
    iput-object p3, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Lccsanandroid/view/View;

    .line 132
    new-instance v2, Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p4, p5}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    iput-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    .line 135
    invoke-virtual {p2, p0, p1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;Lccsanandroid/content/Context;)V

    .line 136
    return-void
.end method

.method private tryShow()Z
    .locals 9

    .line 149
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 150
    return v1

    .line 153
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Lccsanandroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 157
    :cond_1
    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    .line 159
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 160
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    .line 163
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    .line 164
    .local v0, "anchor":Lccsanandroid/view/View;
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 165
    .local v3, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 166
    if-eqz v3, :cond_3

    .line 167
    iget-object v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :cond_3
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Lccsanandroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->addOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 170
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4, v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Lccsanandroid/view/View;)V

    .line 171
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    iget v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v5}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 173
    iget-boolean v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    .line 174
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    iget-object v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Lccsanandroid/content/Context;

    iget v7, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v4, v5, v6, v7}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Lccsanandroid/widget/ListAdapter;Lccsanandroid/view/ViewGroup;Lccsanandroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 175
    iput-boolean v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 178
    :cond_4
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    iget v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v4, v6}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 179
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 180
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->getEpicenterBounds()Lccsanandroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Lccsanandroid/graphics/Rect;)V

    .line 181
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 183
    iget-object v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v4

    .line 184
    .local v4, "listView":Lccsanandroid/widget/ListView;
    invoke-virtual {v4, p0}, Lccsanandroid/widget/ListView;->setOnKeyListener(Lccsanandroid/view/View$OnKeyListener;)V

    .line 186
    iget-boolean v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 187
    iget-object v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Lccsanandroid/content/Context;

    .line 188
    invoke-static {v6}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_popup_menu_header_item_layout:I

    invoke-virtual {v6, v7, v4, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/FrameLayout;

    .line 190
    .local v6, "titleItemView":Lccsanandroid/widget/FrameLayout;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Lccsanandroid/widget/FrameLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v7

    check-cast v7, Lccsanandroid/widget/TextView;

    .line 191
    .local v7, "titleView":Lccsanandroid/widget/TextView;
    if-eqz v7, :cond_5

    .line 192
    iget-object v8, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    invoke-virtual {v6, v2}, Lccsanandroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    invoke-virtual {v4, v6, v5, v2}, Lccsanandroid/widget/ListView;->addHeaderView(Lccsanandroid/view/View;Ljava/lang/Object;Z)V

    .line 200
    .end local v6    # "titleItemView":Lccsanandroid/widget/FrameLayout;
    .end local v7    # "titleView":Lccsanandroid/widget/TextView;
    :cond_6
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    iget-object v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v2, v5}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 201
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->show()V

    .line 203
    return v1

    .line 154
    .end local v0    # "anchor":Lccsanandroid/view/View;
    .end local v3    # "addGlobalListener":Z
    .end local v4    # "listView":Lccsanandroid/widget/ListView;
    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 223
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    .line 218
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Lccsanandroid/widget/ListView;
    .locals 1

    .line 344
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 301
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 304
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 307
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    .line 233
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close()V

    .line 235
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 237
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Lccsanandroid/view/ViewTreeObserver;

    .line 240
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Lccsanandroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 242
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Lccsanandroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 245
    :cond_2
    return-void
.end method

.method public onKey(Lccsanandroid/view/View;ILccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Lccsanandroid/view/KeyEvent;

    .line 330
    invoke-virtual {p3}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 332
    return v1

    .line 334
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 321
    return-void
.end method

.method public onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 1

    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;

    .line 263
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Lccsanandroid/view/View;

    iget-boolean v6, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/appcompat/view/menu/MenuBuilder;Lccsanandroid/view/View;ZII)V

    .line 266
    .local v0, "subPopup":Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 267
    invoke-static {p1}, Lccsanandroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 270
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 271
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 274
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 277
    iget-object v2, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    .line 278
    .local v2, "horizontalOffset":I
    iget-object v3, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    .line 282
    .local v3, "verticalOffset":I
    iget v4, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iget-object v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Lccsanandroid/view/View;

    .line 283
    invoke-static {v5}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v5

    .line 282
    invoke-static {v4, v5}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 284
    .local v4, "hgrav":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 285
    iget-object v5, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Lccsanandroid/view/View;

    invoke-virtual {v5}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    .line 288
    :cond_0
    invoke-virtual {v0, v2, v3}, Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    iget-object v1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v1, p1}, Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lccsanandroidx/appcompat/view/menu/MenuBuilder;)Z

    .line 292
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 295
    .end local v0    # "subPopup":Lccsanandroidx/appcompat/view/menu/MenuPopupHelper;
    .end local v2    # "horizontalOffset":I
    .end local v3    # "verticalOffset":I
    .end local v4    # "hgrav":I
    :cond_2
    return v1
.end method

.method public setAnchorView(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Lccsanandroid/view/View;

    .line 325
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Lccsanandroid/view/View;

    .line 326
    return-void
.end method

.method public setCallback(Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 258
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 259
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 141
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 145
    iput p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 146
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 350
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 351
    return-void
.end method

.method public setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 339
    iput-object p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Lccsanandroid/widget/PopupWindow$OnDismissListener;

    .line 340
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 360
    iput-boolean p1, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    .line 361
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 355
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Lccsanandroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 356
    return-void
.end method

.method public show()V
    .locals 2

    .line 208
    invoke-direct {p0}, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    .line 251
    iget-object v0, p0, Lccsanandroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Lccsanandroidx/appcompat/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lccsanandroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 254
    :cond_0
    return-void
.end method
