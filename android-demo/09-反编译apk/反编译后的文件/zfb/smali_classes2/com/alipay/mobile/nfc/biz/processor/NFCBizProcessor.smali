.class public abstract Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;
.super Ljava/lang/Object;
.source "NFCBizProcessor.java"


# instance fields
.field protected nfcType:Lcom/alipay/mobile/nfc/info/NfcType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNfcType()Lcom/alipay/mobile/nfc/info/NfcType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;->nfcType:Lcom/alipay/mobile/nfc/info/NfcType;

    return-object v0
.end method

.method public abstract onNewTag(Landroid/os/Bundle;)V
.end method

.method public setNfcType(Lcom/alipay/mobile/nfc/info/NfcType;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/nfc/biz/processor/NFCBizProcessor;->nfcType:Lcom/alipay/mobile/nfc/info/NfcType;

    .line 13
    return-void
.end method
