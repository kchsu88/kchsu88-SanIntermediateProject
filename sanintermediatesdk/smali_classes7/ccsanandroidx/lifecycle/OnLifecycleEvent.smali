.class public interface abstract annotation Lccsanandroidx/lifecycle/OnLifecycleEvent;
.super Ljava/lang/Object;
.source "OnLifecycleEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()Lccsanandroidx/lifecycle/Lifecycle$Event;
.end method
