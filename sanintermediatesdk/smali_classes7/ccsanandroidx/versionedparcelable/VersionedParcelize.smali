.class public interface abstract annotation Lccsanandroidx/versionedparcelable/VersionedParcelize;
.super Ljava/lang/Object;
.source "VersionedParcelize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lccsanandroidx/versionedparcelable/VersionedParcelize;
        allowSerialization = false
        deprecatedIds = {}
        factory = V
        ignoreParcelables = false
        isCustom = false
        jetifyAs = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract allowSerialization()Z
.end method

.method public abstract deprecatedIds()[I
.end method

.method public abstract factory()Ljava/lang/Class;
.end method

.method public abstract ignoreParcelables()Z
.end method

.method public abstract isCustom()Z
.end method

.method public abstract jetifyAs()Ljava/lang/String;
.end method
