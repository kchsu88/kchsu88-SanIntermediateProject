.class public Lccsanandroidx/appcompat/widget/TintInfo;
.super Ljava/lang/Object;
.source "TintInfo.java"


# instance fields
.field public mHasTintList:Z

.field public mHasTintMode:Z

.field public mTintList:Lccsanandroid/content/res/ColorStateList;

.field public mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 37
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/TintInfo;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 38
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 39
    return-void
.end method
