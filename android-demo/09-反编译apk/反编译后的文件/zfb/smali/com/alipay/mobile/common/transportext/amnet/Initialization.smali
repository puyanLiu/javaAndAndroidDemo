.class Lcom/alipay/mobile/common/transportext/amnet/Initialization;
.super Ljava/lang/Object;
.source "Initialization.java"


# static fields
.field public static final KEY_GROUND:Ljava/lang/String; = "{GROUND}"

.field public static final KEY_HPACK_VERSION:Ljava/lang/String; = "{HPACK-VERSION}"

.field public static final KEY_LINK_ACTION:Ljava/lang/String; = "{LINK-ACTION}"

.field public static final KEY_NETWORK:Ljava/lang/String; = "{NETWORK}"

.field public static final KEY_NOW:Ljava/lang/String; = "{NOW}"

.field public static final KEY_RESEND:Ljava/lang/String; = "{RESEND}"

.field public static final KEY_SETTING_VERSION:Ljava/lang/String; = "{SETTING-VERSION}"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static decodeReqCmd([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;
    .locals 6

    .prologue
    .line 662
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 663
    const-class v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;

    invoke-virtual {v0, p0, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;

    .line 664
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;-><init>()V

    .line 666
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;->seq:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 667
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;->seq:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->seq:I

    .line 670
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 671
    iget-object v3, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;->cmdList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 672
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessage;->cmdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 673
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;

    .line 677
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    if-eqz v4, :cond_1

    .line 678
    new-instance v4, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;

    invoke-direct {v4}, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;-><init>()V

    .line 679
    iget-object v5, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->getValue()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->type:I

    .line 680
    iget-object v5, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    if-nez v5, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v4, Lcom/alipay/mobile/common/transportext/amnet/Linkage$Cmd;->data:[B

    .line 682
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 687
    :cond_3
    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqCmd;->lst:Ljava/util/List;

    .line 688
    return-object v1
.end method

.method public static decodeReqSetting([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 174
    new-instance v0, Lcom/squareup/wire/Wire;

    new-array v1, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 175
    const-class v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;

    invoke-virtual {v0, p0, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;

    .line 176
    new-instance v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;

    invoke-direct {v8}, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;-><init>()V

    .line 178
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration;-><init>()V

    iput-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    .line 179
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    .line 181
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 183
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 184
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_1

    .line 188
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 189
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 190
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_2

    .line 194
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 195
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 196
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_3

    .line 200
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 201
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 202
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_4

    .line 206
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 207
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 208
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v1, :cond_5

    .line 212
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;-><init>()V

    .line 213
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V

    .line 214
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->duration:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_5
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    if-eqz v1, :cond_8

    .line 219
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;->interval:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 220
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 221
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;->interval:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    .line 225
    :cond_6
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 226
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 227
    if-eqz v1, :cond_6

    .line 228
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 229
    if-ltz v9, :cond_4b

    const/16 v10, 0x3e8

    if-gt v9, v10, :cond_4b

    .line 232
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_1
    move v2, v1

    .line 235
    goto :goto_0

    .line 238
    :cond_7
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-array v7, v2, [I

    iput-object v7, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->reconnect:[I

    .line 239
    if-eqz v2, :cond_8

    .line 240
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    .line 241
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 243
    iget-object v7, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v7, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->reconnect:[I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v7, v2

    .line 241
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 249
    :cond_8
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    if-eqz v1, :cond_a

    .line 250
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    if-eqz v1, :cond_9

    .line 251
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbFore:Ljava/util/Map;

    .line 253
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbFore:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;)V

    .line 256
    :cond_9
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    if-eqz v1, :cond_a

    .line 257
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbBack:Ljava/util/Map;

    .line 259
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->hbBack:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;)V

    .line 263
    :cond_a
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    if-eqz v1, :cond_19

    .line 264
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;->ip_address:Ljava/util/List;

    if-eqz v1, :cond_19

    .line 265
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 266
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;->ip_address:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    .line 271
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 272
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;

    .line 275
    if-eqz v1, :cond_b

    iget-object v4, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4a

    :cond_b
    move v4, v3

    .line 281
    :goto_4
    if-eqz v4, :cond_d

    .line 282
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    if-eqz v10, :cond_d

    .line 283
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 284
    if-ltz v10, :cond_c

    const v11, 0xffff

    if-le v10, v11, :cond_d

    :cond_c
    move v4, v3

    .line 292
    :cond_d
    if-eqz v4, :cond_e

    .line 293
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    if-eqz v10, :cond_e

    .line 294
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 295
    if-eq v10, v6, :cond_e

    if-eq v10, v12, :cond_e

    move v4, v3

    .line 303
    :cond_e
    if-eqz v4, :cond_10

    .line 304
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    if-eqz v10, :cond_10

    .line 305
    iget-object v10, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 306
    if-ltz v10, :cond_f

    const/16 v11, 0x3e8

    if-le v10, v11, :cond_10

    :cond_f
    move v4, v3

    .line 314
    :cond_10
    if-eqz v4, :cond_49

    .line 315
    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v1, v2, 0x1

    :goto_5
    move v2, v1

    .line 318
    goto :goto_3

    .line 320
    :cond_11
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-array v4, v2, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    iput-object v4, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->address:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    .line 321
    if-eqz v2, :cond_19

    .line 322
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    .line 325
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 326
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;

    .line 327
    new-instance v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;-><init>()V

    .line 328
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ip:Ljava/lang/String;

    .line 329
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    if-eqz v9, :cond_12

    .line 330
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->port:I

    .line 333
    :cond_12
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    if-eqz v9, :cond_13

    .line 334
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->type:I

    .line 337
    :cond_13
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    if-eqz v9, :cond_14

    .line 338
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->score:I

    .line 341
    :cond_14
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    if-eqz v9, :cond_15

    .line 342
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 343
    iget-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 344
    iput-object v5, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 348
    :cond_15
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    if-eqz v9, :cond_17

    iget-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    if-eqz v9, :cond_17

    .line 349
    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 350
    if-ltz v1, :cond_16

    const v9, 0xffff

    if-le v1, v9, :cond_18

    .line 353
    :cond_16
    iput-object v5, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->ipAcc:Ljava/lang/String;

    .line 359
    :cond_17
    :goto_7
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->address:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;

    aput-object v7, v1, v2

    .line 325
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    .line 355
    :cond_18
    iput v1, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$AddrInf;->portAcc:I

    goto :goto_7

    .line 365
    :cond_19
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    if-eqz v1, :cond_1a

    .line 366
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    .line 367
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    .line 368
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 371
    if-lez v1, :cond_2a

    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_2a

    .line 374
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    .line 380
    :goto_8
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    if-eqz v1, :cond_2b

    .line 381
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 384
    if-lez v1, :cond_2b

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2b

    .line 387
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    .line 393
    :goto_9
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    if-eqz v1, :cond_2c

    .line 394
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 397
    if-lez v1, :cond_2c

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_2c

    .line 400
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    .line 407
    :cond_1a
    :goto_a
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    if-eqz v1, :cond_1f

    .line 408
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    .line 409
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-eqz v1, :cond_1b

    .line 410
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->DEBUG:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-ne v1, v2, :cond_2d

    .line 411
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v3, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    .line 422
    :cond_1b
    :goto_b
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    if-eqz v1, :cond_1c

    .line 423
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;->PLAIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    if-ne v1, v2, :cond_31

    .line 424
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v3, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    .line 431
    :cond_1c
    :goto_c
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    .line 432
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 433
    if-lez v1, :cond_1d

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_1d

    .line 436
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->pending:I

    .line 440
    :cond_1d
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 441
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    if-eqz v1, :cond_1e

    if-ne v1, v6, :cond_1f

    .line 445
    :cond_1e
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->reset:I

    .line 450
    :cond_1f
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    if-eqz v1, :cond_3d

    .line 451
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    .line 452
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    .line 453
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->on:Z

    .line 457
    :cond_20
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    if-nez v1, :cond_33

    .line 458
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    const/16 v2, 0x3c

    iput v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    .line 469
    :goto_d
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    if-eqz v1, :cond_3d

    .line 470
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 472
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    .line 478
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 479
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;

    .line 485
    if-nez v1, :cond_35

    move v4, v3

    .line 505
    :goto_f
    if-eqz v4, :cond_22

    .line 511
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    if-eqz v7, :cond_22

    .line 512
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 513
    if-ltz v7, :cond_21

    const v11, 0xffff

    if-le v7, v11, :cond_22

    :cond_21
    move v4, v3

    .line 521
    :cond_22
    if-eqz v4, :cond_23

    .line 522
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    if-nez v7, :cond_38

    move v4, v3

    .line 534
    :cond_23
    :goto_10
    if-eqz v4, :cond_25

    .line 535
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    if-eqz v7, :cond_24

    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    if-nez v7, :cond_25

    :cond_24
    move v4, v3

    .line 542
    :cond_25
    if-eqz v4, :cond_27

    .line 543
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    if-eqz v7, :cond_26

    .line 544
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 547
    if-lez v7, :cond_26

    const/16 v11, 0x64

    if-le v7, v11, :cond_27

    :cond_26
    move v4, v3

    .line 555
    :cond_27
    if-eqz v4, :cond_29

    .line 556
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    if-eqz v7, :cond_28

    .line 557
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 560
    if-ltz v7, :cond_28

    const/16 v11, 0x64

    if-le v7, v11, :cond_29

    :cond_28
    move v4, v3

    .line 568
    :cond_29
    if-eqz v4, :cond_45

    .line 569
    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v1, v2, 0x1

    :goto_11
    move v2, v1

    .line 572
    goto :goto_e

    .line 376
    :cond_2a
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v13, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->period:I

    goto/16 :goto_8

    .line 389
    :cond_2b
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v13, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->count:I

    goto/16 :goto_9

    .line 402
    :cond_2c
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->flash:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;

    iput v13, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Flash;->holding:I

    goto/16 :goto_a

    .line 412
    :cond_2d
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->INFO:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-ne v1, v2, :cond_2e

    .line 413
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v6, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    goto/16 :goto_b

    .line 414
    :cond_2e
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->WARN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-ne v1, v2, :cond_2f

    .line 415
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v12, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    goto/16 :goto_b

    .line 416
    :cond_2f
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->ERROR:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-ne v1, v2, :cond_30

    .line 417
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    const/4 v2, 0x3

    iput v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    goto/16 :goto_b

    .line 418
    :cond_30
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->FATAL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-ne v1, v2, :cond_1b

    .line 419
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    const/4 v2, 0x4

    iput v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->log:I

    goto/16 :goto_b

    .line 425
    :cond_31
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;->GZIP:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    if-ne v1, v2, :cond_32

    .line 426
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v6, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    goto/16 :goto_c

    .line 427
    :cond_32
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;->LZ4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    if-ne v1, v2, :cond_1c

    .line 428
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->misc:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;

    iput v12, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Misc;->compress:I

    goto/16 :goto_c

    .line 460
    :cond_33
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 462
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_34

    .line 463
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    const/16 v2, 0x3c

    iput v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    goto/16 :goto_d

    .line 465
    :cond_34
    iget-object v2, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iput v1, v2, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->sleep:I

    goto/16 :goto_d

    .line 488
    :cond_35
    iget-object v4, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    if-eqz v4, :cond_48

    .line 489
    iget-object v4, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_36

    move-object v4, v5

    .line 495
    :cond_36
    :goto_12
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    if-eqz v7, :cond_47

    .line 496
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_37

    move-object v7, v5

    .line 502
    :cond_37
    :goto_13
    if-nez v4, :cond_46

    if-nez v7, :cond_46

    move v4, v3

    .line 503
    goto/16 :goto_f

    .line 525
    :cond_38
    iget-object v7, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 526
    if-eqz v7, :cond_23

    if-eq v7, v6, :cond_23

    move v4, v3

    .line 529
    goto/16 :goto_10

    .line 574
    :cond_39
    if-eqz v2, :cond_3d

    .line 575
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    new-array v2, v2, [Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    .line 577
    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    .line 579
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 580
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;

    .line 581
    new-instance v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;-><init>()V

    .line 582
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    if-eqz v9, :cond_3a

    .line 583
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 584
    iget-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 585
    iput-object v5, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->domain:Ljava/lang/String;

    .line 589
    :cond_3a
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    if-eqz v9, :cond_3b

    .line 590
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    .line 591
    iget-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 592
    iput-object v5, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->ip:Ljava/lang/String;

    .line 596
    :cond_3b
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    if-eqz v9, :cond_3c

    .line 597
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->port:I

    .line 600
    :cond_3c
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->protocol:I

    .line 601
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->request:Ljava/lang/String;

    .line 602
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    iput-object v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->response:Ljava/lang/String;

    .line 603
    iget-object v9, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->waiting:I

    .line 604
    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;->trying:I

    .line 605
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->detect:Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Detect;->inf:[Lcom/alipay/mobile/common/transportext/amnet/Configuration$DetectInf;

    aput-object v7, v1, v2

    .line 579
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_14

    .line 611
    :cond_3d
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    if-eqz v1, :cond_43

    .line 612
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    .line 613
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    if-eqz v1, :cond_3e

    .line 614
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    invoke-static {v1, v12, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 619
    :cond_3e
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    if-eqz v1, :cond_3f

    .line 620
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    const/4 v2, 0x3

    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v4, v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 625
    :cond_3f
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    if-eqz v1, :cond_40

    .line 626
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    const/4 v2, 0x4

    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v4, v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 631
    :cond_40
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    if-eqz v1, :cond_41

    .line 632
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    const/4 v2, 0x5

    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v4, v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 637
    :cond_41
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    if-eqz v1, :cond_42

    .line 638
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    invoke-static {v1, v6, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 643
    :cond_42
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    if-eqz v1, :cond_43

    .line 644
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->resend:Ljava/util/Map;

    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v2, v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Ljava/util/Map;ILjava/lang/Integer;)V

    .line 650
    :cond_43
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    if-eqz v1, :cond_44

    .line 651
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 652
    if-ltz v0, :cond_44

    .line 653
    iget-object v1, v8, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqSetting;->cfg:Lcom/alipay/mobile/common/transportext/amnet/Configuration;

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Configuration;->version:I

    .line 657
    :cond_44
    return-object v8

    :cond_45
    move v1, v2

    goto/16 :goto_11

    :cond_46
    move v4, v6

    goto/16 :goto_f

    :cond_47
    move-object v7, v5

    goto/16 :goto_13

    :cond_48
    move-object v4, v5

    goto/16 :goto_12

    :cond_49
    move v1, v2

    goto/16 :goto_5

    :cond_4a
    move v4, v6

    goto/16 :goto_4

    :cond_4b
    move v1, v2

    goto/16 :goto_1
.end method

.method public static decodeReqStatus([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 143
    const-class v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    invoke-virtual {v0, p0, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    .line 144
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;-><init>()V

    .line 146
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->SESSION_NEED_REACTIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-ne v0, v2, :cond_0

    .line 147
    const/4 v0, 0x4

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$ReqStatus;->status:I

    .line 150
    :cond_0
    return-object v1
.end method

.method public static decodeRspInit([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/squareup/wire/Wire;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 105
    const-class v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;

    invoke-virtual {v0, p0, v3}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;

    .line 106
    new-instance v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;

    invoke-direct {v3}, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;-><init>()V

    .line 109
    :try_start_0
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->result_code:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 110
    sget-object v5, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 111
    const/4 v4, 0x0

    iput v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 125
    iget-object v4, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->can_resend:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iput v1, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->resend:I

    .line 129
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->over_limit_interval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
    if-le v1, v2, :cond_3

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_3

    .line 132
    iput v1, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->reconn:I

    .line 136
    :cond_3
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitReturnMessage;->memo:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->expand:Ljava/lang/String;

    .line 137
    return-object v3

    .line 112
    :cond_4
    :try_start_1
    sget-object v5, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->WAIT_CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 113
    const/4 v4, 0x1

    iput v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 114
    :cond_5
    sget-object v5, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACK_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 115
    const/4 v4, 0x2

    iput v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I

    goto :goto_0

    .line 116
    :cond_6
    sget-object v5, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FORE_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 117
    const/4 v4, 0x2

    iput v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I

    goto :goto_0

    .line 118
    :cond_7
    sget-object v5, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->RECONN_AFTER_TIME:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 119
    const/4 v4, 0x3

    iput v4, v3, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspInit;->status:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static decodeRspStatus([B)Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 155
    new-instance v0, Lcom/squareup/wire/Wire;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    .line 156
    const-class v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    invoke-virtual {v0, p0, v1}, Lcom/squareup/wire/Wire;->parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    .line 157
    new-instance v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;-><init>()V

    .line 159
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-ne v2, v3, :cond_1

    .line 160
    iput v4, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;->status:I

    .line 169
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :cond_1
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->WAIT_CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-ne v2, v3, :cond_2

    .line 162
    const/4 v0, 0x1

    iput v0, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;->status:I

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACK_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-ne v2, v3, :cond_3

    .line 164
    iput v5, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;->status:I

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FORE_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-ne v0, v2, :cond_0

    .line 166
    iput v5, v1, Lcom/alipay/mobile/common/transportext/amnet/Initialization$RspStatus;->status:I

    goto :goto_0
.end method

.method public static encodeReqCmd(I)[B
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;

    invoke-direct {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;-><init>()V

    .line 95
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeReqGroundStatus(Z)[B
    .locals 2

    .prologue
    .line 76
    new-instance v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    invoke-direct {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;-><init>()V

    .line 77
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FOREGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 78
    invoke-virtual {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACKGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    goto :goto_0
.end method

.method public static encodeReqInit(Ljava/util/Map;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)[B"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;

    invoke-direct {v2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;-><init>()V

    .line 54
    if-eqz p0, :cond_1

    .line 55
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 57
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 65
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;BLjava/util/Map;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeReqUserStatus(ZLjava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 85
    new-instance v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    invoke-direct {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;-><init>()V

    .line 86
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 87
    iput-object p1, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    .line 88
    iput-object p2, v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    .line 89
    invoke-virtual {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGOUT:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    goto :goto_0
.end method

.method private static fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 876
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;->keep_alive_time:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;->keep_alive_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 880
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x294

    if-gt v0, v1, :cond_0

    .line 883
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    .line 889
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;->heart_beat_time_out:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;->heart_beat_time_out:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 893
    if-lez v0, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 896
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    .line 901
    :goto_1
    return-void

    .line 885
    :cond_0
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->interval:I

    goto :goto_0

    .line 898
    :cond_1
    iput v2, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;->silence:I

    goto :goto_1
.end method

.method private static fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 905
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 907
    if-lez v0, :cond_0

    if-gt v0, v1, :cond_0

    .line 910
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->connect:I

    .line 914
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 916
    if-lez v0, :cond_1

    if-gt v0, v1, :cond_1

    .line 919
    iput v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$TimeOut;->handshake:I

    .line 922
    :cond_1
    return-void
.end method

.method private static fill(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;BLjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;",
            "B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 696
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    .line 699
    if-nez p1, :cond_21

    .line 700
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 703
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 704
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 706
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 707
    const-string/jumbo v3, "apdid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 708
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    goto :goto_0

    .line 709
    :cond_1
    const-string/jumbo v3, "{NETWORK}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 710
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_2
    const-string/jumbo v3, "cacheSessionId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 712
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    goto :goto_0

    .line 713
    :cond_3
    const-string/jumbo v3, "utdid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 714
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    goto :goto_0

    .line 715
    :cond_4
    const-string/jumbo v3, "systemType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 716
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    goto :goto_0

    .line 717
    :cond_5
    const-string/jumbo v3, "systemVersion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 718
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    goto :goto_0

    .line 719
    :cond_6
    const-string/jumbo v3, "channels"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 720
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    goto :goto_0

    .line 721
    :cond_7
    const-string/jumbo v3, "productID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 722
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    goto :goto_0

    .line 723
    :cond_8
    const-string/jumbo v3, "productVersion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 724
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    goto/16 :goto_0

    .line 725
    :cond_9
    const-string/jumbo v3, "mobileBrand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 726
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    goto/16 :goto_0

    .line 727
    :cond_a
    const-string/jumbo v3, "mobileModel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 728
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    goto/16 :goto_0

    .line 729
    :cond_b
    const-string/jumbo v3, "clientType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 730
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 731
    :cond_c
    const-string/jumbo v3, "clientPostion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 732
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    goto/16 :goto_0

    .line 733
    :cond_d
    const-string/jumbo v3, "appType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    .line 734
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 735
    :cond_e
    const-string/jumbo v3, "deviceToken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 736
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    goto/16 :goto_0

    .line 737
    :cond_f
    const-string/jumbo v3, "imei"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    .line 738
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    goto/16 :goto_0

    .line 739
    :cond_10
    const-string/jumbo v3, "imsi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_11

    .line 740
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    goto/16 :goto_0

    .line 741
    :cond_11
    const-string/jumbo v3, "isPrisonBreak"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_15

    .line 742
    const-string/jumbo v0, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    .line 745
    :cond_12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 746
    :cond_13
    const-string/jumbo v0, "F"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 749
    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 751
    :cond_15
    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16

    .line 752
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    goto/16 :goto_0

    .line 753
    :cond_16
    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17

    .line 754
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    goto/16 :goto_0

    .line 755
    :cond_17
    const-string/jumbo v3, "{SETTING-VERSION}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_18

    .line 757
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 758
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 760
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 761
    :cond_18
    const-string/jumbo v3, "{HPACK-VERSION}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const-string/jumbo v3, "isPushEnable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_19

    .line 769
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    goto/16 :goto_0

    .line 770
    :cond_19
    const-string/jumbo v3, "umidToken"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1a

    .line 771
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    goto/16 :goto_0

    .line 772
    :cond_1a
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b

    .line 773
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    goto/16 :goto_0

    .line 774
    :cond_1b
    const-string/jumbo v3, "appStatus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1c

    .line 776
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 779
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 780
    :cond_1c
    const-string/jumbo v3, "{GROUND}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1d

    .line 781
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 783
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 784
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 786
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 788
    :cond_1d
    const-string/jumbo v3, "{LINK-ACTION}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1e

    .line 790
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 791
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 793
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 794
    :cond_1e
    const-string/jumbo v3, "{NOW}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    .line 796
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 797
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 799
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 800
    :cond_1f
    const-string/jumbo v3, "language"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_20

    .line 801
    iput-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    goto/16 :goto_0

    .line 802
    :cond_20
    const-string/jumbo v3, "{RESEND}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 805
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 812
    :cond_21
    new-instance v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;

    invoke-direct {v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;-><init>()V

    .line 813
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    .line 814
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    .line 816
    :cond_22
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 817
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 822
    if-eqz v0, :cond_22

    if-eqz v1, :cond_22

    .line 823
    new-instance v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;

    invoke-direct {v4}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;-><init>()V

    .line 824
    iput-object v0, v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;->key:Ljava/lang/String;

    .line 825
    iput-object v1, v4, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;->value:Ljava/lang/String;

    .line 826
    iget-object v0, v3, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    :cond_23
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_24
    return-void
.end method

.method private static fill(Ljava/util/Map;ILjava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    if-lez v0, :cond_0

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_0

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    :cond_0
    return-void
.end method

.method private static fill(Ljava/util/Map;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;",
            ">;",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;",
            ")V"
        }
    .end annotation

    .prologue
    .line 837
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_0

    .line 838
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 839
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 840
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_1

    .line 844
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 845
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 846
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_2

    .line 850
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 851
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 852
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_3

    .line 856
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 857
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 858
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_4

    .line 862
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 863
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 864
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_4
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    if-eqz v0, :cond_5

    .line 868
    new-instance v0, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;-><init>()V

    .line 869
    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/amnet/Initialization;->fill(Lcom/alipay/mobile/common/transportext/amnet/Configuration$Heartbeat;Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/HeartBeatSetting;)V

    .line 870
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_5
    return-void
.end method
