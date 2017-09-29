.class public Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
.super Ljava/lang/Object;
.source "ChatMsgDbManager.java"


# static fields
.field private static volatile mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private volatile mChatMsgColumnIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

.field private volatile mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->LOGTAG:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    .line 53
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    .line 54
    return-void
.end method

.method private chatMsgToContentValues(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 980
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 983
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 984
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 986
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMsgToContentValues : encrypt failed[ mData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 986
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v0, 0x0

    .line 1039
    :goto_0
    return-object v0

    .line 990
    :cond_0
    const-string/jumbo v2, "mData"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_1
    const-string/jumbo v1, "userId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string/jumbo v1, "appId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    if-eqz v1, :cond_2

    .line 996
    const-string/jumbo v1, "mId"

    iget v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    :cond_2
    const-string/jumbo v1, "mk"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-nez v1, :cond_4

    .line 1000
    const-string/jumbo v1, "mct"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1001
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatMsgToContentValues msg.mct is null, use current time"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    :goto_1
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    if-nez v1, :cond_5

    .line 1006
    const-string/jumbo v1, "localTime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1010
    :goto_2
    const-string/jumbo v1, "toId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v1, "isRead"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v1, "reserv2"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v1, "msgStatus"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v1, "msgDirection"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v1, "mSum"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v1, "mType"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v1, "mExt"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v1, "mBox"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-wide v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 1021
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 1023
    :cond_3
    const-string/jumbo v1, "bTime"

    iget-wide v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1024
    const-string/jumbo v1, "isExt"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v1, "isSc"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v1, "bMsgId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v1, "ext"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    const-string/jumbo v2, "single"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1031
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "single"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :goto_3
    const-string/jumbo v1, "shopId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->shopId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    :cond_4
    const-string/jumbo v1, "mct"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1008
    :cond_5
    const-string/jumbo v1, "localTime"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1033
    :cond_6
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 9

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->initChatMsgColumnIndexMap(Landroid/database/Cursor;)V

    .line 1087
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 1088
    const-class v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1090
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 1115
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1116
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1118
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cursorToChatMsg : decrypt failed[ mData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const/4 v0, 0x0

    .line 1123
    :goto_1
    return-object v0

    .line 1090
    :cond_0
    aget-object v5, v3, v2

    .line 1092
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1094
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1095
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1099
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1090
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1100
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1101
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1102
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1103
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1104
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1105
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1106
    :cond_6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1107
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1109
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/android/phone/publicplatform/synccenter/R$string;->ChatMsgDbManager_1089:I

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/publicplatform/synccenter/R$string;->ChatMsgDbManager_1109:I

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_8
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    :cond_9
    move-object v0, v1

    .line 1123
    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initChatMsgColumnIndexMap(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 966
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    .line 968
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 969
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 974
    :cond_0
    return-void

    .line 969
    :cond_1
    aget-object v3, v1, v0

    .line 970
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 971
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1051
    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1055
    if-eqz v1, :cond_4

    .line 1057
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1059
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 1060
    if-eqz v1, :cond_0

    .line 1077
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_0
    :goto_0
    return-object v0

    .line 1063
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1072
    if-eqz v1, :cond_0

    .line 1077
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1064
    :cond_2
    :try_start_3
    new-instance v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    invoke-direct {v2}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;-><init>()V

    .line 1065
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1066
    iget-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v3}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1067
    iget-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v3, v3, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->targetId:Ljava/lang/String;

    .line 1068
    const-string/jumbo v3, "unread_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    .line 1069
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "RedPoint"

    invoke-virtual {v2}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1063
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1075
    :catchall_0
    move-exception v0

    .line 1076
    :goto_2
    if-eqz v1, :cond_3

    .line 1077
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_3
    throw v0

    .line 1076
    :cond_4
    if-eqz v1, :cond_0

    .line 1077
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1075
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public chatClearAllMsgSendigStatusToFail()I
    .locals 5

    .prologue
    .line 284
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatClearAllMsgSendigStatusToFail:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    const-string/jumbo v1, "msgStatus"

    const-string/jumbo v2, "fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, " msgStatus = ? "

    .line 289
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sending"

    aput-object v4, v2, v3

    .line 291
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatClearExtMessageIsExt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 1160
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatClearExtMessageIsExt:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1164
    const-string/jumbo v1, "isExt"

    const-string/jumbo v2, "n"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ?"

    .line 1166
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1168
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 177
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteByLocalMsgId:[localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 181
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByBMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 234
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChatMsgDbManager#hatDeleteMsgByBMsgId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    const-string/jumbo v2, " ][bMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and bMsgId=?"

    .line 238
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 213
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteMsgByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and toId = ? "

    .line 219
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteMsgByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 197
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "ppchat"

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "userId = ? and appId = ? and toId = ? and (mBox IS NULL or mBox= ?) "

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    .line 207
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 206
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 203
    :cond_0
    const-string/jumbo v0, "userId = ? and appId = ? and toId = ? and mBox= ? "

    goto :goto_0
.end method

.method public chatDeleteMsgByTargetIdAndExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 225
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChatMsgDbManager#chatDeleteMsgByTargetIdAndExtra:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and toId = ? and mExt = ? "

    .line 230
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatGetMaxMid()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1229
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatGetMaxMid:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string/jumbo v1, "select max(mId) as mId from chat_message"

    .line 1232
    new-array v3, v0, [Ljava/lang/String;

    .line 1235
    const/4 v2, 0x0

    .line 1237
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1238
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1239
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1244
    :cond_0
    if-eqz v2, :cond_1

    .line 1245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1248
    :cond_1
    :goto_0
    return v0

    .line 1241
    :catch_0
    move-exception v1

    .line 1242
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatGetMaxMid : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    if-eqz v2, :cond_1

    .line 1245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    .line 1244
    if-eqz v2, :cond_2

    .line 1245
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1247
    :cond_2
    throw v0
.end method

.method public chatGetMinMid()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1252
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatGetMinMid:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string/jumbo v1, "select min(mId) as mId from chat_message"

    .line 1255
    new-array v3, v0, [Ljava/lang/String;

    .line 1258
    const/4 v2, 0x0

    .line 1260
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1261
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1267
    :cond_0
    if-eqz v2, :cond_1

    .line 1268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1271
    :cond_1
    :goto_0
    return v0

    .line 1264
    :catch_0
    move-exception v1

    .line 1265
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatGetMinMid : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    if-eqz v2, :cond_1

    .line 1268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    .line 1267
    if-eqz v2, :cond_2

    .line 1268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_2
    throw v0
.end method

.method public declared-synchronized chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 243
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatInsertMsg:[ msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 251
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 252
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->newsHasReceived(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 253
    if-nez v2, :cond_0

    .line 256
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->insertNewsReceivedRecord(Ljava/lang/String;Ljava/lang/String;)J

    .line 261
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMsgToContentValues(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Landroid/content/ContentValues;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->insert(Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public chatMarkFeedsMsgReaded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 369
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkFeedsMsgReaded:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 374
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v1, "isRead = ? and userId = ? and appId = ? "

    .line 379
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 380
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 325
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkMsgReaded:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ localMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 331
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v1, "isRead = ? and userId = ? and appId = ? and mId = ?"

    .line 335
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 336
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 353
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkMsgReadedByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 359
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, " isRead = ? and userId = ? and appId = ?  and toId = ?"

    .line 364
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 365
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgUnread(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 66
    const/4 v1, 0x0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string/jumbo v3, "select max(mId) max_id from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v3, "chat_message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v3, " where toId = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-array v3, v8, [Ljava/lang/String;

    aput-object p2, v3, v0

    .line 76
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :goto_1
    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    if-eq v2, v4, :cond_1

    .line 99
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    const-string/jumbo v3, "isRead"

    const-string/jumbo v4, "n"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v3, "mId = "

    .line 102
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 106
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "jiushi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message unread !!! mId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return v0

    .line 80
    :cond_2
    :try_start_2
    const-string/jumbo v1, "max_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 81
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "jiushi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "max_id : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :goto_2
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v0

    move-object v1, v3

    .line 91
    :goto_3
    if-eqz v1, :cond_3

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_3
    throw v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    :try_start_4
    const-string/jumbo v5, "chatsdk_ChatMsgDbManager"

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ][ cursor="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v5, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 90
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    move v2, v4

    goto/16 :goto_1
.end method

.method public chatQueryExtMessage(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1173
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryExtMessage:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1173
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string/jumbo v1, "select * from chat_message where isExt = ? and userId = ? and appId = ? and mId = ?"

    .line 1177
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1182
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1183
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1189
    :cond_0
    if-eqz v2, :cond_1

    .line 1190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1194
    :cond_1
    :goto_0
    return-object v0

    .line 1186
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1187
    :goto_1
    :try_start_2
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryExtMessage : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1189
    if-eqz v2, :cond_1

    .line 1190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1189
    :goto_2
    if-eqz v2, :cond_2

    .line 1190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1192
    :cond_2
    throw v0

    .line 1188
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1186
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public chatQueryLastMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1206
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatQueryLastMessage:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string/jumbo v1, "SELECT * FROM chat_message WHERE  userId =? AND appId = ?  AND mType <> \'recall\' ORDER  BY mId DESC LIMIT 1 OFFSET 0"

    .line 1208
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1213
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1214
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1220
    :cond_0
    if-eqz v2, :cond_1

    .line 1221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1224
    :cond_1
    :goto_0
    return-object v0

    .line 1217
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1218
    :goto_1
    :try_start_2
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryExtMessage : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1220
    if-eqz v2, :cond_1

    .line 1221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1220
    :goto_2
    if-eqz v2, :cond_2

    .line 1221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_2
    throw v0

    .line 1219
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1217
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgOffset:[ targetExtra="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 529
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 530
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 532
    const/4 v1, 0x0

    .line 533
    const/4 v0, 0x0

    .line 535
    if-lez p6, :cond_1

    .line 538
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    const-string/jumbo v4, "select count(*) from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string/jumbo v4, "chat_message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const-string/jumbo v4, " where userId = ? and appId = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string/jumbo v4, " and mId > ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 548
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    .line 550
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_1
    if-nez v0, :cond_2

    .line 556
    if-nez p5, :cond_8

    .line 558
    const/4 v0, 0x1

    .line 584
    :cond_2
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 588
    const-string/jumbo v2, "select * from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string/jumbo v2, "chat_message"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string/jumbo v2, " where userId = ? and appId = ?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 593
    const-string/jumbo v2, " and mExt = ? "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    :goto_2
    if-eqz p7, :cond_d

    .line 602
    if-nez v0, :cond_3

    if-lez p5, :cond_3

    .line 603
    const-string/jumbo v0, " and mId >=? "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_3
    const-string/jumbo v0, " order by mId asc "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :goto_3
    const-string/jumbo v0, " limit ? "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 619
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_f

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 626
    if-eqz v1, :cond_4

    .line 627
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_10

    .line 642
    :cond_4
    if-eqz v1, :cond_5

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_5
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgOffset: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-object v3

    .line 548
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 549
    :catchall_0
    move-exception v0

    .line 550
    if-eqz v1, :cond_7

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_7
    throw v0

    .line 559
    :cond_8
    if-nez p7, :cond_2

    .line 562
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    const-string/jumbo v4, "select count(*) from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string/jumbo v4, "chat_message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v4, " where userId = ? and appId = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v4, " and mId <= ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_9

    .line 572
    const/4 v0, 0x0

    .line 573
    const/4 p7, 0x1

    .line 576
    :cond_9
    if-eqz v1, :cond_2

    .line 577
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 575
    :catchall_1
    move-exception v0

    .line 576
    if-eqz v1, :cond_a

    .line 577
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_a
    throw v0

    .line 598
    :cond_b
    :try_start_3
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    .line 641
    :catchall_2
    move-exception v0

    .line 642
    if-eqz v1, :cond_c

    .line 643
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_c
    throw v0

    .line 609
    :cond_d
    if-nez v0, :cond_e

    if-lez p5, :cond_e

    .line 610
    :try_start_4
    const-string/jumbo v0, " and mId <= ? "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_e
    const-string/jumbo v0, "  order by mId desc"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 620
    :cond_f
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 619
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_4

    .line 629
    :cond_10
    :try_start_5
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_11

    .line 631
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 627
    :cond_11
    :goto_6
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_5

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryLocalMsgOffset: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {v2, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6
.end method

.method public chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsg:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 657
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 658
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 659
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    mul-int v6, p5, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 661
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    .line 664
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatQueryLocalMsg: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-object v0
.end method

.method public chatQueryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 671
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgByLastId:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ lastId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ querySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 675
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 681
    const-string/jumbo v0, "select * from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string/jumbo v0, "chat_message"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v0, " where userId = ? and appId = ? and toId = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    if-eqz p4, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    const-string/jumbo v0, " and mExt = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    aput-object p4, v0, v7

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 690
    :goto_0
    const-string/jumbo v1, " and mId < ? "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string/jumbo v1, " order by mId desc "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string/jumbo v1, "limit ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const/4 v1, 0x0

    .line 697
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 698
    if-eqz v1, :cond_0

    .line 699
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    :cond_0
    if-eqz v1, :cond_1

    .line 715
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 719
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgByLastId: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-object v2

    .line 688
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_0

    .line 700
    :cond_3
    const/4 v0, 0x0

    .line 702
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 708
    :goto_2
    if-eqz v0, :cond_4

    .line 709
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 713
    :catchall_0
    move-exception v0

    .line 714
    if-eqz v1, :cond_5

    .line 715
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_5
    throw v0

    .line 703
    :catch_0
    move-exception v3

    .line 704
    :try_start_3
    const-string/jumbo v4, "chatsdk_ChatMsgDbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "chatQueryLocalMsg: cursorToChatMsg[ e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ][ cursor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 706
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 704
    invoke-static {v4, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgOffset:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    const-string/jumbo v0, "select * from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v0, "chat_message"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v0, " where userId = ? and appId = ? and toId = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    if-eqz p4, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    const-string/jumbo v0, " and mExt = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 484
    :goto_0
    const-string/jumbo v1, " order by mId"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    if-eqz p7, :cond_3

    .line 486
    const-string/jumbo v1, " asc"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :goto_1
    const-string/jumbo v1, " limit ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string/jumbo v1, " offset "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    const/4 v1, 0x0

    .line 497
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_0

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    :cond_0
    if-eqz v1, :cond_1

    .line 514
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 518
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgOffset: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-object v2

    .line 482
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_0

    .line 488
    :cond_3
    const-string/jumbo v1, " desc"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 501
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_5

    .line 503
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    if-eqz v1, :cond_6

    .line 514
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_6
    throw v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryLocalMsgOffset: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 1

    .prologue
    .line 775
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 786
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryMsgByLocalMsgId:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    const-string/jumbo v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const-string/jumbo v2, "chat_message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string/jumbo v2, " where userId = ? and appId = ? and mId = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 798
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 799
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 801
    :try_start_2
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatQueryMsgByLocalMsgId: msg[ localMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 803
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 811
    :goto_0
    if-eqz v2, :cond_0

    .line 812
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_0
    :goto_1
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 806
    :goto_2
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryMsgByLocalMsgId: exeption[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 808
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 809
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 811
    if-eqz v2, :cond_0

    .line 812
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 810
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 811
    :goto_3
    if-eqz v2, :cond_1

    .line 812
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_1
    throw v0

    .line 810
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 805
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public chatQueryMsgByMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 732
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryMsgByMsgId:[ msgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    const-string/jumbo v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string/jumbo v2, "chat_message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string/jumbo v2, " where userId = ? and appId = ? and bMsgId = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 745
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 746
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 748
    :try_start_2
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatQueryMsgByMsgId: msg[ msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 750
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 758
    :goto_0
    if-eqz v2, :cond_0

    .line 759
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_0
    :goto_1
    return-object v0

    .line 752
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 753
    :goto_2
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryMsgByMsgId: exeption[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 755
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 756
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 758
    if-eqz v2, :cond_0

    .line 759
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 757
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 758
    :goto_3
    if-eqz v2, :cond_1

    .line 759
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_1
    throw v0

    .line 757
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 752
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public chatQuerySendingMsg()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQuerySendingMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string/jumbo v1, "chat_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v1, " where msgStatus = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "sending"

    aput-object v4, v3, v1

    .line 430
    const/4 v1, 0x0

    .line 432
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_0
    if-eqz v1, :cond_1

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQuerySendingMsg: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-object v2

    .line 437
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_3

    .line 439
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    .line 449
    if-eqz v1, :cond_4

    .line 450
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_4
    throw v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 310
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgMkByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    const-string/jumbo v1, "mk"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 318
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 320
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatSetMsgStatusByLocalMsgId(ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 296
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgStatusByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, " mId = ? "

    .line 303
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 305
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 270
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgStatusByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 277
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 279
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatUpadateExtMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 1130
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatUpadateExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1132
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1133
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1134
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    invoke-static {p6}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMsgToContentValues : encrypt failed[ mData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v0, -0x1

    .line 1154
    :goto_0
    return v0

    :cond_0
    move-object p6, v0

    .line 1146
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v1, "mType"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v1, "mData"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const-string/jumbo v1, "isExt = ? and userId = ? and appId = ? and mId = ? "

    .line 1152
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1154
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public chatUpdateOverTimeMsg(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    sub-long v4, p2, p4

    .line 115
    const/4 v3, 0x0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string/jumbo v6, "select toId, userId , count(isRead) read_count from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v6, "chat_message"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v6, " where isRead = ? and mct < ? group by toId,userId"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "n"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    :cond_0
    if-eqz v3, :cond_1

    .line 151
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_1
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "chatUpdateOverTimeMsg:[localMsgId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "] currentTimeMillis : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    move-wide v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const-string/jumbo v3, "isRead"

    const-string/jumbo v6, "y"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string/jumbo v3, "reserv2"

    const-string/jumbo v6, "n"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "isRead = ? and mct < ?"

    .line 166
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "n"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    .line 167
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v2, v3, v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 168
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "jiushi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " message read !!!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v7

    .line 134
    :cond_2
    :try_start_1
    const-string/jumbo v2, "toId"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v6, "userId"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v8, "read_count"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 139
    invoke-static {v2, v8}, Lcom/alipay/mobile/chatsdk/util/LogAgent;->FFC_1125_02(Ljava/lang/String;I)V

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string/jumbo v10, "jiushi"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "toId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, ", userId="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    const-string/jumbo v6, "count = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-interface {v9, v10, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 149
    :catchall_0
    move-exception v2

    .line 150
    if-eqz v3, :cond_3

    .line 151
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_3
    throw v2

    .line 142
    :catch_0
    move-exception v2

    .line 143
    :try_start_3
    const-string/jumbo v6, "chatsdk_ChatMsgDbManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ][ cursor="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v6, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public feedsMsgCount(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 391
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "feedsMsgCount:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 393
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    const-string/jumbo v1, "select count(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    const-string/jumbo v1, "chat_message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string/jumbo v1, " where userId = ? and appId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    .line 401
    const/4 v1, 0x0

    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 404
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    :cond_0
    if-eqz v2, :cond_1

    .line 411
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_1
    const-wide/16 v0, 0x0

    .line 408
    :cond_2
    :goto_0
    return-wide v0

    .line 407
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 408
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 410
    if-eqz v2, :cond_2

    .line 411
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    .line 410
    :goto_1
    if-eqz v1, :cond_4

    .line 411
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_4
    throw v0

    .line 409
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public getAllTargetSummary(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "getAllTargetSummary"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string/jumbo v0, "SELECT cm2.*,        (SELECT Count(cm3.isRead) unread_count         FROM   chat_message cm3         WHERE  cm3.toId = cm2.toId         AND cm3.appId = cm2.appId         AND cm3.userId = cm2.userId         AND cm3.isRead = \'n\')  unread_count  FROM chat_message  AS cm2  WHERE cm2.appId=?  GROUP BY cm2.userId,cm2.toId ; "

    .line 848
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 849
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 850
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getAllTargetSummary: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-object v0
.end method

.method public getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 912
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastFeedsSummary:[ userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 914
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 917
    :cond_0
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    .line 918
    const-string/jumbo v2, "event=[ChatMsgDbManager#getLastFeedsSummary] paramter userId is null or appId is null."

    .line 917
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_1
    :goto_0
    return-object v0

    .line 922
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    const-string/jumbo v2, " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3   WHERE cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\' ) unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.mType<>\'recall\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string/jumbo v2, " ) AS summ  WHERE  cm2.mId = summ.mId;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 928
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 932
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 937
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gtz v2, :cond_4

    .line 953
    :cond_3
    if-eqz v1, :cond_1

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 940
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 943
    new-instance v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;-><init>()V

    .line 944
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 945
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 946
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->targetId:Ljava/lang/String;

    .line 947
    const-string/jumbo v2, "unread_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    .line 948
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "RedPoint"

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 949
    if-eqz v1, :cond_1

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 953
    :goto_1
    if-eqz v1, :cond_5

    .line 954
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 956
    :cond_5
    throw v0

    .line 952
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getLastSummaryForAllTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLastSummaryForAllTarget:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string/jumbo v0, " SELECT cm2.*, (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\') unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  GROUP  BY cm1.toId) AS summ  WHERE  cm2.mId = summ.mId;"

    .line 828
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 830
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 832
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getLastSummaryForAllTarget: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-object v0
.end method

.method public getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 866
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastSummeryForTarget:[ userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 869
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 870
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    .line 875
    const-string/jumbo v2, "event=[ChatMsgDbManager#getLastSummeryForTarget] paramter userId is null or targetId is null."

    .line 874
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :goto_0
    return-object v0

    .line 879
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    const-string/jumbo v2, " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\') unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.toId = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 883
    const-string/jumbo v2, " AND cm1.mExt = \'?\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_2
    const-string/jumbo v2, " ) AS summ  WHERE  cm2.mId = summ.mId;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 889
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 893
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 896
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 901
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 902
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    .line 904
    :cond_4
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getLastSummeryForTarget: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertNewsReceivedRecord(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->insertNewsIds(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public markMessagesReadedByAppId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 341
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "markAllFeedsReaded:[ appId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ mBox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 344
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v1, "appId = ? and mBox = ?"

    .line 348
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public newsHasReceived(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1282
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v3, "newsHasReceived:"

    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const-string/jumbo v3, "select count (*) from news_ids where userId=? and bMsgId=?"

    .line 1285
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    .line 1286
    const/4 v2, 0x0

    .line 1288
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1289
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1290
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1291
    if-lez v3, :cond_3

    .line 1298
    if-eqz v2, :cond_0

    .line 1299
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1302
    :cond_0
    :goto_0
    return v0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "newsHasReceived : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    if-eqz v2, :cond_1

    .line 1299
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 1302
    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v0

    .line 1298
    if-eqz v2, :cond_2

    .line 1299
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1301
    :cond_2
    throw v0

    .line 1298
    :cond_3
    if-eqz v2, :cond_1

    .line 1299
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
