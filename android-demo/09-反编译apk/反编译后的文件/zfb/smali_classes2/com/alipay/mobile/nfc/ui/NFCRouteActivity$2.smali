.class Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;
.super Ljava/lang/Object;
.source "NFCRouteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->f(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;->f(Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    const-class v4, Lcom/alipay/mobile/nfc/ui/NFCFeedBackActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 138
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 139
    return-void
.end method
