.class Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    .line 409
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 6
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 413
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/internal/NavigationMenuItemView;

    .line 414
    .local v0, "itemView":Lccsancom/google/android/material/internal/NavigationMenuItemView;
    iget-object v1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 415
    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuItemView;->getItemData()Lccsanandroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    .line 416
    .local v1, "item":Lccsanandroidx/appcompat/view/menu/MenuItemImpl;
    iget-object v2, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->menu:Lccsanandroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Lccsanandroid/view/MenuItem;Lccsanandroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v2

    .line 417
    .local v2, "result":Z
    const/4 v3, 0x0

    .line 418
    .local v3, "checkStateChanged":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 419
    iget-object v5, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v5, v5, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v5, v1}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Lccsanandroidx/appcompat/view/menu/MenuItemImpl;)V

    .line 420
    const/4 v3, 0x1

    .line 422
    :cond_0
    iget-object v5, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v5, v4}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 423
    if-eqz v3, :cond_1

    .line 424
    iget-object v5, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    invoke-virtual {v5, v4}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 426
    :cond_1
    return-void
.end method
