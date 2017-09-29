.class public Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.source "PBSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PBSerializer"

.field public static final VERSION:B = 0x2t


# instance fields
.field private data:[B

.field private mExtParam:Ljava/lang/Object;

.field private mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mId:I

    .line 49
    return-void
.end method

.method private toByteArray()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    .line 109
    :goto_0
    return-object v0

    .line 68
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    throw v1

    .line 74
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    monitor-exit p0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 80
    const-string/jumbo v0, "PBSerializer"

    const-string/jumbo v2, "mParams not instanceof Object[]."

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mParams:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 85
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 86
    const-string/jumbo v0, "PBSerializer"

    const-string/jumbo v2, "Protobuf mParams noly support one inParameter"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getProtobufCodec()Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;

    move-result-object v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    const-string/jumbo v0, "PBSerializer"

    const-string/jumbo v2, "protobufCodec == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 96
    :cond_5
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->isPBBean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 97
    const-string/jumbo v0, "PBSerializer"

    const-string/jumbo v2, "mParams not protobuf bean!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_6
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    const-string/jumbo v1, "PBSerializer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PB Data size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". PB Data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".PB Object String = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/transport/ext/ProtobufCodec;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    :try_start_6
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->data:[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mId:I

    return v0
.end method

.method public getRequestDataDigest()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 139
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 141
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "PBSerializer"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public packet()[B
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public setExtParam(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mExtParam:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/alipay/mobile/common/rpc/protocol/protobuf/PBSerializer;->mId:I

    .line 133
    return-void
.end method
