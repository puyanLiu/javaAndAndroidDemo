.class public Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;
.super Landroid/nfc/cardemulation/HostApduService;
.source "NFCHostApduService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final ACCOUNT_PAY:I

.field private static final AID:[B

.field private static final SELECT_APDU_CLA:I

.field private static final SELECT_APDU_INS:I

.field private static final SELECT_APDU_P1:I

.field private static final SELECT_OK_SW:[B

.field private static final TAG:Ljava/lang/String; = "NFCApduProcessorManager"

.field private static final UNKNOWN_CMD_SW:[B


# instance fields
.field private final NOT_PROCESS:[B

.field private mAid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 29
    const-string/jumbo v0, "00"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_CLA:I

    .line 30
    const-string/jumbo v0, "A4"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_INS:I

    .line 31
    const-string/jumbo v0, "04"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_P1:I

    .line 34
    const-string/jumbo v0, "F222222222"

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->AID:[B

    .line 36
    const-string/jumbo v0, "9000"

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_OK_SW:[B

    .line 38
    const-string/jumbo v0, "0000"

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->UNKNOWN_CMD_SW:[B

    .line 40
    const-string/jumbo v0, "A1"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->ACCOUNT_PAY:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/nfc/cardemulation/HostApduService;-><init>()V

    .line 24
    const-string/jumbo v0, "NOT_PROCESS"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->NOT_PROCESS:[B

    .line 21
    return-void
.end method

.method private selectAid([BLandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p1, p2}, Lcom/alipay/mobile/nfc/apdu/NFCApdu;->selectAid([BLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->mAid:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private sendApduBroadcast()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.nfc.APDU_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcastSync(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onDeactivated(I)V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->getInstance()Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->getApduProcessor(Ljava/lang/String;)Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;->onDeactivated(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public processCommandApdu([BLandroid/os/Bundle;)[B
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;-><init>([B)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received APDU: cla: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getCLA()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getINS()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " p1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getP1()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " p2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getP2()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ne: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getNe()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getNc()I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_CLA:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getCLA()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 55
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_INS:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getINS()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 56
    sget-object v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->AID:[B

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_P1:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getP1()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Select AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nfc/apdu/util/BytesUtils;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    sget-object v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_OK_SW:[B

    .line 81
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_CLA:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getCLA()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 63
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->SELECT_APDU_INS:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getINS()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 64
    sget-object v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->AID:[B

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    sget v1, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->ACCOUNT_PAY:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/apdu/util/CommandAPDU;->getP1()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processCommandApdu"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->ByteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p0}, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->sendApduBroadcast()V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->selectAid([BLandroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->getInstance()Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessorManager;->getApduProcessor(Ljava/lang/String;)Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nfc/apdu/processor/NFCApduProcessor;->processCommandApdu([BLandroid/os/Bundle;)[B

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v0, "alipay failed"

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    .line 78
    sget-object v3, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->SELECT_OK_SW:[B

    aput-object v3, v1, v2

    .line 77
    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/apdu/util/NFCUtils;->ConcatArrays([B[[B)[B

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nfc/apdu/service/NFCHostApduService;->UNKNOWN_CMD_SW:[B

    goto :goto_0
.end method
