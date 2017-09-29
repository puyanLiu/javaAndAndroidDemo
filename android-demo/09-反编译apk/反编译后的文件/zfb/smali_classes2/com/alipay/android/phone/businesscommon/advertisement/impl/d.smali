.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 448
    const-string/jumbo v0, "listItem clicked!"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 453
    const-string/jumbo v1, "AdClick"

    .line 454
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/d;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 452
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method
