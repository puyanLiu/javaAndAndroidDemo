.class public interface abstract Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;
.super Ljava/lang/Object;
.source "ContactQueryer.java"


# static fields
.field public static final TYPE_CONTACT:I = 0x0

.field public static final TYPE_GROUP:I = 0x1


# virtual methods
.method public abstract doQuery(Ljava/util/List;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation
.end method
