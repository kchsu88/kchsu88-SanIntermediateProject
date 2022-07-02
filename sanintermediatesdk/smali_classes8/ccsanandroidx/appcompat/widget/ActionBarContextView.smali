.class public Lccsanandroidx/appcompat/widget/ActionBarContextView;
.super Lccsanandroidx/appcompat/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# instance fields
.field private mClose:Lccsanandroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Lccsanandroid/view/View;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Lccsanandroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Lccsanandroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 62
    sget v0, Lccsanandroidx/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AbsActionBarView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 69
    sget-object v0, Lccsanandroidx/appcompat/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III)Lccsanandroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Lccsanandroidx/appcompat/widget/TintTypedArray;
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {v0, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 72
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 74
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 77
    sget v2, Lccsanandroidx/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {v0, v2, v1}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    .line 80
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget v2, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_action_mode_close_item_material:I

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 84
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 85
    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 135
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v1, Lccsanandroidx/appcompat/R$layout;->ccsan_abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    .line 138
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    .line 139
    sget v2, Lccsanandroidx/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v1, v2}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleView:Lccsanandroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    sget v2, Lccsanandroidx/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v1, v2}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Lccsanandroid/widget/TextView;

    .line 141
    iget v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/widget/TextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 144
    :cond_0
    iget v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Lccsanandroid/widget/TextView;->setTextAppearance(Lccsanandroid/content/Context;I)V

    .line 149
    .end local v0    # "inflater":Lccsanandroid/view/LayoutInflater;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleView:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 153
    .local v0, "hasTitle":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 154
    .local v1, "hasSubtitle":Z
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitleView:Lccsanandroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 157
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->addView(Lccsanandroid/view/View;)V

    .line 159
    :cond_5
    return-void
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public bridge synthetic canShowOverflowMenu()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public closeMode()V
    .locals 1

    .line 194
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 196
    return-void

    .line 198
    :cond_0
    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 234
    new-instance v0, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 239
    new-instance v0, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMode(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 162
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 164
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    iget v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    .line 165
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->addView(Lccsanandroid/view/View;)V

    .end local v0    # "inflater":Lccsanandroid/view/LayoutInflater;
    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->addView(Lccsanandroid/view/View;)V

    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    nop

    .line 170
    :goto_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 171
    .local v0, "closeButton":Lccsanandroid/view/View;
    new-instance v1, Lccsanandroidx/appcompat/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView$1;-><init>(Lccsanandroidx/appcompat/widget/ActionBarContextView;Lccsanandroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p1}, Lccsanandroidx/appcompat/view/ActionMode;->getMenu()Lccsanandroid/view/Menu;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    .line 179
    .local v1, "menu":Lccsanandroidx/appcompat/view/menu/MenuBuilder;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 182
    :cond_2
    new-instance v2, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;-><init>(Lccsanandroid/content/Context;)V

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    .line 183
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 185
    new-instance v2, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    .local v2, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mPopupContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Lccsanandroidx/appcompat/view/menu/MenuPresenter;Lccsanandroid/content/Context;)V

    .line 188
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->getMenuView(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/appcompat/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Lccsanandroidx/appcompat/widget/ActionMenuView;

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    .line 189
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lccsanandroidx/core/view/ViewCompat;->setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v3, v2}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method

.method public bridge synthetic isOverflowMenuShowPending()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    .line 203
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    .line 204
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 92
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic onHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->onHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 360
    invoke-virtual {p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 362
    invoke-virtual {p1, p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setSource(Lccsanandroid/view/View;)V

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 369
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 324
    move-object v6, p0

    invoke-static {p0}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v7

    .line 325
    .local v7, "isLayoutRtl":Z
    if-eqz v7, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 326
    .local v0, "x":I
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v8

    .line 327
    .local v8, "y":I
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 329
    .local v9, "contentHeight":I
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    const/16 v10, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_3

    .line 330
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 331
    .local v11, "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v7, :cond_1

    iget v1, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    move v12, v1

    .line 332
    .local v12, "startMargin":I
    if-eqz v7, :cond_2

    iget v1, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget v1, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2
    move v13, v1

    .line 333
    .local v13, "endMargin":I
    invoke-static {v0, v12, v7}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v14

    .line 334
    .end local v0    # "x":I
    .local v14, "x":I
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    move-object v0, p0

    move v2, v14

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->positionChild(Lccsanandroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v14, v0

    .line 335
    invoke-static {v14, v13, v7}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->next(IIZ)I

    move-result v0

    move v11, v0

    .end local v14    # "x":I
    .restart local v0    # "x":I
    goto :goto_3

    .line 338
    .end local v11    # "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "startMargin":I
    .end local v13    # "endMargin":I
    :cond_3
    move v11, v0

    .end local v0    # "x":I
    .local v11, "x":I
    :goto_3
    iget-object v0, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_4

    .line 339
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->positionChild(Lccsanandroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 342
    :cond_4
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    if-eqz v1, :cond_5

    .line 343
    move-object v0, p0

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->positionChild(Lccsanandroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v11, v0

    .line 346
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    goto :goto_4

    :cond_6
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_4
    move v10, v0

    .line 348
    .end local v11    # "x":I
    .local v10, "x":I
    iget-object v0, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_7

    .line 349
    iget-object v1, v6, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    xor-int/lit8 v5, v7, 0x1

    move-object v0, p0

    move v2, v10

    move v3, v8

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->positionChild(Lccsanandroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v10, v0

    .line 351
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 244
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 245
    .local v1, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_11

    .line 250
    invoke-static/range {p2 .. p2}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 251
    .local v3, "heightMode":I
    if-eqz v3, :cond_10

    .line 256
    invoke-static/range {p1 .. p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 258
    .local v4, "contentWidth":I
    iget v5, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_0

    .line 259
    iget v5, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 261
    .local v5, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 262
    .local v6, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 263
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 264
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 266
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 267
    invoke-virtual {v0, v11, v7, v10, v12}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->measureChildView(Lccsanandroid/view/View;III)I

    move-result v7

    .line 268
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mClose:Lccsanandroid/view/View;

    invoke-virtual {v11}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 269
    .local v11, "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    .line 272
    .end local v11    # "lp":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v11}, Lccsanandroidx/appcompat/widget/ActionMenuView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_2

    .line 273
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v12}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->measureChildView(Lccsanandroid/view/View;III)I

    move-result v7

    .line 277
    :cond_2
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-eqz v11, :cond_7

    iget-object v13, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    if-nez v13, :cond_7

    .line 278
    iget-boolean v13, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v13, :cond_6

    .line 279
    invoke-static {v12, v12}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 280
    .local v11, "titleWidthSpec":I
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Lccsanandroid/widget/LinearLayout;->measure(II)V

    .line 281
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v13}, Lccsanandroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    .line 282
    .local v13, "titleWidth":I
    if-gt v13, v7, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 283
    .local v14, "titleFits":Z
    :goto_1
    if-eqz v14, :cond_4

    .line 284
    sub-int/2addr v7, v13

    .line 286
    :cond_4
    iget-object v15, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const/16 v12, 0x8

    :goto_2
    invoke-virtual {v15, v12}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    .end local v11    # "titleWidthSpec":I
    .end local v13    # "titleWidth":I
    .end local v14    # "titleFits":Z
    goto :goto_3

    .line 288
    :cond_6
    invoke-virtual {v0, v11, v7, v10, v12}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->measureChildView(Lccsanandroid/view/View;III)I

    move-result v7

    .line 292
    :cond_7
    :goto_3
    iget-object v11, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    if-eqz v11, :cond_c

    .line 293
    invoke-virtual {v11}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 294
    .local v11, "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    iget v12, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_8

    .line 295
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_4

    :cond_8
    const/high16 v12, -0x80000000

    .line 296
    .local v12, "customWidthMode":I
    :goto_4
    iget v14, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_9

    .line 297
    iget v14, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_5

    :cond_9
    move v14, v7

    .line 298
    .local v14, "customWidth":I
    :goto_5
    iget v15, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v13, :cond_a

    .line 299
    goto :goto_6

    :cond_a
    const/high16 v2, -0x80000000

    .line 300
    .local v2, "customHeightMode":I
    :goto_6
    iget v9, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_b

    .line 301
    iget v9, v11, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_7

    :cond_b
    move v9, v8

    .line 302
    .local v9, "customHeight":I
    :goto_7
    iget-object v13, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    invoke-static {v14, v12}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 303
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-static {v9, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 302
    invoke-virtual {v13, v15, v1}, Lccsanandroid/view/View;->measure(II)V

    goto :goto_8

    .line 292
    .end local v2    # "customHeightMode":I
    .end local v9    # "customHeight":I
    .end local v11    # "lp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .end local v12    # "customWidthMode":I
    .end local v14    # "customWidth":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_c
    move/from16 v16, v1

    .line 306
    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    :goto_8
    iget v1, v0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_f

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    .line 309
    .local v2, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_9
    if-ge v9, v2, :cond_e

    .line 310
    invoke-virtual {v0, v9}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v11

    .line 311
    .local v11, "v":Lccsanandroid/view/View;
    invoke-virtual {v11}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 312
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_d

    .line 313
    move v1, v12

    .line 309
    .end local v11    # "v":Lccsanandroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 316
    .end local v9    # "i":I
    :cond_e
    invoke-virtual {v0, v4, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 317
    .end local v1    # "measuredHeight":I
    .end local v2    # "count":I
    goto :goto_a

    .line 318
    :cond_f
    invoke-virtual {v0, v4, v5}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 320
    :goto_a
    return-void

    .line 252
    .end local v4    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v16    # "widthMode":I
    .local v1, "widthMode":I
    :cond_10
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v3    # "heightMode":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_11
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method

.method public bridge synthetic onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .line 42
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 98
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mContentHeight:I

    .line 99
    return-void
.end method

.method public setCustomView(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 102
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->removeView(Lccsanandroid/view/View;)V

    .line 105
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mCustomView:Lccsanandroid/view/View;

    .line 106
    if-eqz p1, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->removeView(Lccsanandroid/view/View;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleLayout:Lccsanandroid/widget/LinearLayout;

    .line 110
    :cond_1
    if-eqz p1, :cond_2

    .line 111
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->addView(Lccsanandroid/view/View;)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    .line 114
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 122
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 123
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    .line 124
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 117
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 118
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->initTitle()V

    .line 119
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .line 372
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->requestLayout()V

    .line 375
    :cond_0
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mTitleOptional:Z

    .line 376
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarContextView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
