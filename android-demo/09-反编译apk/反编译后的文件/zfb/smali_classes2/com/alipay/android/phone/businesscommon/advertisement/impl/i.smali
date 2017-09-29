.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;
.super Ljava/lang/Object;
.source "AdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Landroid/view/View;

    move-result-object v0

    .line 188
    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a()Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/i;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 192
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/l;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    goto :goto_0
.end method
