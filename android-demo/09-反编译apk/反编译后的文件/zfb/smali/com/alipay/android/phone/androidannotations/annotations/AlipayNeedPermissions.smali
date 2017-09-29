.class public interface abstract annotation Lcom/alipay/android/phone/androidannotations/annotations/AlipayNeedPermissions;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alipay/android/phone/androidannotations/annotations/AlipayNeedPermissions;
        denniedCall = ""
        permission = ""
        permissions = {}
        rationaleCall = ""
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
.method public abstract denniedCall()Ljava/lang/String;
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract permissions()[Ljava/lang/String;
.end method

.method public abstract rationaleCall()Ljava/lang/String;
.end method
