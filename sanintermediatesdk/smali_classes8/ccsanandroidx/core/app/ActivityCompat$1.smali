.class Lccsanandroidx/core/app/ActivityCompat$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/app/ActivityCompat;->requestPermissions(Lccsanandroid/app/Activity;[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lccsanandroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>([Ljava/lang/String;Lccsanandroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$permissions",
            "val$activity",
            "val$requestCode"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    iput-object p2, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$activity:Lccsanandroid/app/Activity;

    iput p3, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 522
    iget-object v0, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    .line 524
    .local v0, "grantResults":[I
    iget-object v1, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$activity:Lccsanandroid/app/Activity;

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 525
    .local v1, "packageManager":Lccsanandroid/content/pm/PackageManager;
    iget-object v2, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$activity:Lccsanandroid/app/Activity;

    invoke-virtual {v2}, Lccsanandroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    array-length v3, v3

    .line 528
    .local v3, "permissionCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 529
    iget-object v5, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5, v2}, Lccsanandroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    .line 528
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 533
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$activity:Lccsanandroid/app/Activity;

    check-cast v4, Lccsanandroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    iget v5, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$requestCode:I

    iget-object v6, p0, Lccsanandroidx/core/app/ActivityCompat$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v4, v5, v6, v0}, Lccsanandroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 535
    return-void
.end method
