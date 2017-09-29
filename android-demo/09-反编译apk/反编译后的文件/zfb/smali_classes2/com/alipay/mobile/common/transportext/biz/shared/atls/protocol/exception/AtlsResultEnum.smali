.class public final enum Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;
.super Ljava/lang/Enum;
.source "AtlsResultEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum DataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeCertError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeCertReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeFailException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeReadyFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeResReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeResSignError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeSecurityKeyError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum HandShakeSignFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum InputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum NoHandShake:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum OutputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum ReqDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum ReqDataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum ReqDataSendError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum ResDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum SocketReadException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

.field public static final enum UnknowTag:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;


# instance fields
.field private final code:I

.field private final memo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "SocketReadException"

    const/16 v2, 0x3e7

    const-string/jumbo v3, "\u6d41\u8bfb\u53d6\u5f02\u5e38"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->SocketReadException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 18
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "DataReadError"

    const/16 v2, 0x3e8

    const-string/jumbo v3, "\u6570\u636e\u8bfb\u53d6\u5f02\u5e38"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->DataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 20
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeFail"

    const/16 v2, 0x3e9

    const-string/jumbo v3, "\u63e1\u624b\u5931\u8d25"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 22
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeFailException"

    const/16 v2, 0x3ea

    const-string/jumbo v3, "ATLS\u63e1\u624b\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeFailException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 24
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeSecurityKeyError"

    const/16 v2, 0x3eb

    const-string/jumbo v3, "\u63e1\u624b\u5bc6\u7801\u751f\u6210\u5931\u8d25"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeSecurityKeyError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 26
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeReadyFail"

    const/4 v2, 0x5

    const/16 v3, 0x3ec

    const-string/jumbo v4, "ATLS\u63e1\u624b\u51c6\u5907\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReadyFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 28
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeReqException"

    const/4 v2, 0x6

    const/16 v3, 0x3ed

    const-string/jumbo v4, "ATLS\u63e1\u624b\u8bf7\u6c42\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 30
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeCertReqException"

    const/4 v2, 0x7

    const/16 v3, 0x3ee

    const-string/jumbo v4, "ATLS\u63e1\u624b\u8bc1\u4e66\u8bf7\u6c42\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeCertReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 32
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeCertError"

    const/16 v2, 0x8

    const/16 v3, 0x3ef

    const-string/jumbo v4, "ATLS\u8bc1\u4e66\u52a0\u8f7d\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeCertError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 34
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeSignFail"

    const/16 v2, 0x9

    const/16 v3, 0x3ef

    const-string/jumbo v4, "ATLS\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeSignFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 36
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeResReadError"

    const/16 v2, 0xa

    const/16 v3, 0x7d1

    const-string/jumbo v4, "\u63e1\u624b\u54cd\u5e94\u89e3\u6790\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeResReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 38
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "HandShakeResSignError"

    const/16 v2, 0xb

    const/16 v3, 0x7d2

    const-string/jumbo v4, "\u63e1\u624b\u54cd\u5e94\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeResSignError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 41
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "ReqDataError"

    const/16 v2, 0xc

    const/16 v3, 0x1b59

    const-string/jumbo v4, "\u8bf7\u6c42\u6570\u636e\u89e3\u6790\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 44
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "ReqDataCheckError"

    const/16 v2, 0xd

    const/16 v3, 0x1b5a

    const-string/jumbo v4, "\u8bf7\u6c42\u6570\u636e\u7b7e\u540d\u9a8c\u8bc1\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 47
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "ReqDataReadError"

    const/16 v2, 0xe

    const/16 v3, 0x1b5b

    const-string/jumbo v4, "\u8bf7\u6c42\u6570\u636e\u8bfb\u53d6\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 50
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "InputExLength"

    const/16 v2, 0xf

    const/16 v3, 0x1b5c

    const-string/jumbo v4, "ATLS\u8bfb\u53d6\u6570\u636e\u8d85\u957f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->InputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 52
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "ReqDataSendError"

    const/16 v2, 0x10

    const/16 v3, 0xbbb

    const-string/jumbo v4, "ATLS\u6570\u636e\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataSendError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 54
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "NoHandShake"

    const/16 v2, 0x11

    const/16 v3, 0x7cf

    const-string/jumbo v4, "\u672a\u5b8c\u6210\u63e1\u624b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->NoHandShake:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 57
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "OutputExLength"

    const/16 v2, 0x12

    const/16 v3, 0x1f42

    const-string/jumbo v4, "ATLS\u53d1\u9001\u6570\u636e\u8d85\u957f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->OutputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 60
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "ResDataError"

    const/16 v2, 0x13

    const/16 v3, 0x1f41

    const-string/jumbo v4, "\u54cd\u5e94\u6570\u636e\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ResDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 63
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    const-string/jumbo v1, "UnknowTag"

    const/16 v2, 0x14

    const/16 v3, 0x270f

    const-string/jumbo v4, "ALTS\u672a\u77e5TAG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->UnknowTag:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    .line 13
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->SocketReadException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->DataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeFailException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeSecurityKeyError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReadyFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeCertReqException:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeCertError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeSignFail:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeResReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->HandShakeResSignError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataCheckError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataReadError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->InputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ReqDataSendError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->NoHandShake:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->OutputExLength:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->ResDataError:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->UnknowTag:Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->$VALUES:[Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->code:I

    .line 80
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->memo:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->$VALUES:[Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->code:I

    return v0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/protocol/exception/AtlsResultEnum;->memo:Ljava/lang/String;

    return-object v0
.end method
