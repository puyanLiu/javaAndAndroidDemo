.class Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$3;
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
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCRouteActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCRouteActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    return-void
.end method
