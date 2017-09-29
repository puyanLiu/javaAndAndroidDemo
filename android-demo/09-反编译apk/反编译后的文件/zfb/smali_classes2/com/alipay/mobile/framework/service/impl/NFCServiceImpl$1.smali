.class Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$1;
.super Ljava/lang/Object;
.source "NFCServiceImpl.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;->a(Lcom/alipay/mobile/framework/service/impl/NFCServiceImpl;)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method
