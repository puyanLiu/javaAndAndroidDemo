.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorLinkEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;
.source "Amnet.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;)V
    .locals 9

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrorLinkEvent;->this$0:Lcom/alipay/mobile/common/transportext/amnet/Amnet;

    .line 1245
    const/4 v7, 0x6

    const-string/jumbo v8, "-AMNET-ERR-LNK"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrNoExEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet;Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JILjava/lang/String;ILjava/lang/String;)V

    .line 1251
    return-void
.end method
