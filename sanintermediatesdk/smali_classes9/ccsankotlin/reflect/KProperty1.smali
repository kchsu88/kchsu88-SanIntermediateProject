.class public interface abstract Lccsankotlin/reflect/KProperty1;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lccsankotlin/reflect/KProperty;
.implements Lccsankotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/reflect/KProperty1$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsankotlin/reflect/KProperty<",
        "TV;>;",
        "Lccsankotlin/jvm/functions/Function1<",
        "TT;TV;>;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u000eJ\u0015\u0010\t\u001a\u00028\u00012\u0006\u0010\n\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000bJ\u0017\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010\u000bR\u001e\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lccsankotlin/reflect/KProperty1;",
        "T",
        "V",
        "Lccsankotlin/reflect/KProperty;",
        "Lccsankotlin/Function1;",
        "getter",
        "Lccsankotlin/reflect/KProperty1$Getter;",
        "getGetter",
        "()Lccsankotlin/reflect/KProperty1$Getter;",
        "get",
        "receiver",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getDelegate",
        "",
        "Getter",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public abstract getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getGetter()Lccsankotlin/reflect/KProperty1$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsankotlin/reflect/KProperty1$Getter<",
            "TT;TV;>;"
        }
    .end annotation
.end method
