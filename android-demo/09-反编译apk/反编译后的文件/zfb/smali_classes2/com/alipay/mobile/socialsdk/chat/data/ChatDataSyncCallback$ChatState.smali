.class public final enum Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;
.super Ljava/lang/Enum;
.source "ChatDataSyncCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTEDIDLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field public static final enum CONNECTING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field public static final enum CONNECT_FAILED:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field public static final enum NOT_AVAILABLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

.field public static final enum RECEIVING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    const-string/jumbo v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->NOT_AVAILABLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECTING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    const-string/jumbo v1, "CONNECTEDIDLE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECTEDIDLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    const-string/jumbo v1, "RECEIVING"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->RECEIVING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    const-string/jumbo v1, "CONNECT_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECT_FAILED:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->NOT_AVAILABLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECTING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECTEDIDLE:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->RECEIVING:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->CONNECT_FAILED:Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;->ENUM$VALUES:[Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/socialsdk/chat/data/ChatDataSyncCallback$ChatState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
