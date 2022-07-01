.class public abstract Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;
.super Lccsanandroidx/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field public static final BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I = 0x1

.field public static final BEHAVIOR_SET_USER_VISIBLE_HINT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapt"


# instance fields
.field private final mBehavior:I

.field private mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

.field private final mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Lccsanandroidx/fragment/app/FragmentManager;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/fragment/app/FragmentManager;I)V
    .locals 2
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "behavior"    # I

    .line 140
    invoke-direct {p0}, Lccsanandroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 107
    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    .line 141
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    .line 142
    iput p2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    .line 143
    return-void
.end method


# virtual methods
.method public destroyItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 206
    move-object v0, p3

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 208
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_1

    .line 214
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    .line 217
    invoke-virtual {v3, v0}, Lccsanandroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/Fragment$SavedState;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 216
    :goto_1
    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->remove(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 221
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_3

    .line 222
    iput-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    .line 224
    :cond_3
    return-void
.end method

.method public finishUpdate(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;

    .line 258
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 262
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lccsanandroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Lccsanandroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 167
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 168
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 169
    .local v0, "f":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 170
    return-object v0

    .line 174
    .end local v0    # "f":Lccsanandroidx/fragment/app/Fragment;
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 178
    :cond_1
    invoke-virtual {p0, p2}, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->getItem(I)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    .line 180
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 181
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/fragment/app/Fragment$SavedState;

    .line 182
    .local v1, "fss":Lccsanandroidx/fragment/app/Fragment$SavedState;
    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/Fragment;->setInitialSavedState(Lccsanandroidx/fragment/app/Fragment$SavedState;)V

    .line 186
    .end local v1    # "fss":Lccsanandroidx/fragment/app/Fragment$SavedState;
    :cond_2
    :goto_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 187
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 190
    iget v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-nez v2, :cond_4

    .line 191
    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 194
    :cond_4
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(ILccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 197
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 198
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    sget-object v2, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 201
    :cond_5
    return-object v0
.end method

.method public isViewFromObject(Lccsanandroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 266
    move-object v0, p2

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreState(Lccsanandroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "state"    # Lccsanandroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 294
    if-eqz p1, :cond_4

    .line 295
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/Bundle;

    .line 296
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    invoke-virtual {v0, p2}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 297
    const-string/jumbo v1, "states"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Lccsanandroid/os/Parcelable;

    move-result-object v1

    .line 298
    .local v1, "fss":[Lccsanandroid/os/Parcelable;
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 300
    if-eqz v1, :cond_0

    .line 301
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 302
    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    check-cast v4, Lccsanandroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 306
    .local v2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .local v4, "key":Ljava/lang/String;
    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 309
    .local v5, "index":I
    iget-object v6, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v0, v4}, Lccsanandroidx/fragment/app/FragmentManager;->getFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v6

    .line 310
    .local v6, "f":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v6, :cond_2

    .line 311
    :goto_2
    iget-object v7, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 312
    iget-object v7, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 315
    iget-object v7, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 317
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad fragment at key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentStatePagerAdapt"

    invoke-static {v8, v7}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "f":Lccsanandroidx/fragment/app/Fragment;
    :cond_3
    :goto_3
    goto :goto_1

    .line 322
    .end local v0    # "bundle":Lccsanandroid/os/Bundle;
    .end local v1    # "fss":[Lccsanandroid/os/Parcelable;
    .end local v2    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Lccsanandroid/os/Parcelable;
    .locals 5

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "state":Lccsanandroid/os/Bundle;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 274
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 275
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lccsanandroidx/fragment/app/Fragment$SavedState;

    .line 276
    .local v1, "fss":[Lccsanandroidx/fragment/app/Fragment$SavedState;
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 277
    const-string/jumbo v2, "states"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Lccsanandroid/os/Parcelable;)V

    .line 279
    .end local v1    # "fss":[Lccsanandroidx/fragment/app/Fragment$SavedState;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 280
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/fragment/app/Fragment;

    .line 281
    .local v2, "f":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    if-nez v0, :cond_1

    .line 283
    new-instance v3, Lccsanandroid/os/Bundle;

    invoke-direct {v3}, Lccsanandroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 285
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Lccsanandroidx/fragment/app/FragmentManager;->putFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroidx/fragment/app/Fragment;)V

    .line 279
    .end local v2    # "f":Lccsanandroidx/fragment/app/Fragment;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 229
    move-object v0, p3

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    .line 230
    .local v0, "fragment":Lccsanandroidx/fragment/app/Fragment;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_5

    .line 231
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 233
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v1, v2, :cond_1

    .line 234
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 237
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    sget-object v4, Lccsanandroidx/lifecycle/Lifecycle$State;->STARTED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v3, v4}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Lccsanandroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 242
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 243
    iget v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v1, v2, :cond_4

    .line 244
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_3

    .line 245
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    .line 247
    :cond_3
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Lccsanandroidx/fragment/app/FragmentTransaction;

    sget-object v2, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)Lccsanandroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {v0, v2}, Lccsanandroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 252
    :goto_1
    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lccsanandroidx/fragment/app/Fragment;

    .line 254
    :cond_5
    return-void
.end method

.method public startUpdate(Lccsanandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Lccsanandroid/view/ViewGroup;

    .line 153
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
