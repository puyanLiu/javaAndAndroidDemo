.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

.field private final synthetic e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->d:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iput-object p5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->c:Landroid/app/Activity;

    .line 524
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->d:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v1, v1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->bizExtInfo:Ljava/util/Map;

    .line 523
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 525
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 527
    const-string/jumbo v1, "AdClick"

    .line 528
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->d:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 526
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 533
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 535
    const-string/jumbo v1, "AdClose"

    .line 536
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->d:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    const/4 v4, 0x0

    .line 534
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 537
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;->e:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/f;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/e;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method
