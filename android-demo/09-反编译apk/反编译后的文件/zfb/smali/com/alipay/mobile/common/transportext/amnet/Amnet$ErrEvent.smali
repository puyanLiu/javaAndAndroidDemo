.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;
.source "Amnet.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$NetEvent;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Connection;J)V

    .line 954
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;->text:Ljava/lang/String;

    .line 955
    return-void
.end method


# virtual methods
.method public final information()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ErrEvent;->text:Ljava/lang/String;

    return-object v0
.end method
