.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;
.super Ljava/lang/Object;
.source "AdContent.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/f;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

.field private final synthetic b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v0, v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    .line 358
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "AdClick"

    .line 360
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 366
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 367
    const-string/jumbo v1, "AdClose"

    .line 368
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    iget-object v2, v2, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/c;->b:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;

    iget-object v3, v3, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceObjectInfo;->objectId:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method
