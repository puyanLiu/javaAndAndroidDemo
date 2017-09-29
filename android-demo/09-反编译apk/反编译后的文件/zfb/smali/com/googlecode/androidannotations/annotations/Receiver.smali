.class public interface abstract annotation Lcom/googlecode/androidannotations/annotations/Receiver;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/androidannotations/annotations/Receiver;
        dataSchemes = {}
        local = false
        registerAt = .enum Lcom/googlecode/androidannotations/annotations/Receiver$RegisterAt;->OnCreateOnDestroy:Lcom/googlecode/androidannotations/annotations/Receiver$RegisterAt;
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


# virtual methods
.method public abstract actions()[Ljava/lang/String;
.end method

.method public abstract dataSchemes()[Ljava/lang/String;
.end method

.method public abstract local()Z
.end method

.method public abstract registerAt()Lcom/googlecode/androidannotations/annotations/Receiver$RegisterAt;
.end method
