.class Lccsanandroidx/appcompat/widget/SearchView$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsanandroidx/appcompat/widget/SearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isIconified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1330
    new-instance v0, Lccsanandroidx/appcompat/widget/SearchView$SavedState$1;

    invoke-direct {v0}, Lccsanandroidx/appcompat/widget/SearchView$SavedState$1;-><init>()V

    sput-object v0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1313
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1314
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    .line 1315
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 1309
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 1310
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isIconified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1319
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 1320
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1321
    return-void
.end method
