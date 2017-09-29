.class Lcom/alipay/mobile/nfc/ui/NFCEntry$1;
.super Ljava/lang/Object;
.source "NFCEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCEntry;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCEntry$1;->a:Lcom/alipay/mobile/nfc/ui/NFCEntry;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCEntry$1;->a:Lcom/alipay/mobile/nfc/ui/NFCEntry;

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCEntry$1;->a:Lcom/alipay/mobile/nfc/ui/NFCEntry;

    invoke-static {v1}, Lcom/alipay/mobile/nfc/ui/NFCEntry;->a(Lcom/alipay/mobile/nfc/ui/NFCEntry;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCEntry;->b(Lcom/alipay/mobile/nfc/ui/NFCEntry;)V

    .line 134
    return-void
.end method
