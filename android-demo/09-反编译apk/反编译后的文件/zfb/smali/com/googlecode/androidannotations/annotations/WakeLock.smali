.class public interface abstract annotation Lcom/googlecode/androidannotations/annotations/WakeLock;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/androidannotations/annotations/WakeLock;
        flags = {}
        level = .enum Lcom/googlecode/androidannotations/annotations/WakeLock$Level;->PARTIAL_WAKE_LOCK:Lcom/googlecode/androidannotations/annotations/WakeLock$Level;
        tag = "NO_TAG"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_TAG:Ljava/lang/String; = "NO_TAG"


# virtual methods
.method public abstract flags()[Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;
.end method

.method public abstract level()Lcom/googlecode/androidannotations/annotations/WakeLock$Level;
.end method

.method public abstract tag()Ljava/lang/String;
.end method
