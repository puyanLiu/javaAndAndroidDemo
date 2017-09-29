.class public interface abstract annotation Lorg/androidannotations/annotations/sharedpreferences/SharedPref;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/androidannotations/annotations/sharedpreferences/SharedPref;
        mode = 0x0
        value = .enum Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;->ACTIVITY:Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract mode()I
.end method

.method public abstract value()Lorg/androidannotations/annotations/sharedpreferences/SharedPref$Scope;
.end method
