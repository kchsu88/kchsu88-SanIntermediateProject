.class public interface abstract annotation Lccsankotlin/Deprecated;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lccsankotlin/Deprecated;
        level = .enum Lccsankotlin/DeprecationLevel;->WARNING:Lccsankotlin/DeprecationLevel;
        replaceWith = .subannotation Lccsankotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u001c\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007R\u000f\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\tR\u000f\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lccsankotlin/Deprecated;",
        "",
        "message",
        "",
        "replaceWith",
        "Lccsankotlin/ReplaceWith;",
        "level",
        "Lccsankotlin/DeprecationLevel;",
        "()Lccsankotlin/DeprecationLevel;",
        "()Ljava/lang/String;",
        "()Lccsankotlin/ReplaceWith;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lccsankotlin/annotation/MustBeDocumented;
.end annotation

.annotation runtime Lccsankotlin/annotation/Target;
    allowedTargets = {
        .enum Lccsankotlin/annotation/AnnotationTarget;->CLASS:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->FUNCTION:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->ANNOTATION_CLASS:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->CONSTRUCTOR:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_SETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->PROPERTY_GETTER:Lccsankotlin/annotation/AnnotationTarget;,
        .enum Lccsankotlin/annotation/AnnotationTarget;->TYPEALIAS:Lccsankotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract level()Lccsankotlin/DeprecationLevel;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract replaceWith()Lccsankotlin/ReplaceWith;
.end method
