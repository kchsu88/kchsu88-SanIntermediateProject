.class public interface abstract Lccsanandroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;
.super Ljava/lang/Object;
.source "ConstraintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConstraintUpdatedCallback"
.end annotation


# virtual methods
.method public abstract onConstraintMet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onConstraintNotMet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
