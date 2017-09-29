.class public final enum Lcom/spdu/httpdns/ThreadType;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spdu/httpdns/ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_INIT:Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_NETWORKCHANGE:Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_NEWADD:Lcom/spdu/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

.field public static final enum SYSTEMDNSTEST:Lcom/spdu/httpdns/ThreadType;

.field public static final enum SYSTEMHTTPTEST:Lcom/spdu/httpdns/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSREQUEST_INIT"

    invoke-direct {v0, v1, v3}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/spdu/httpdns/ThreadType;

    .line 5
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSREQUEST_NEWADD"

    invoke-direct {v0, v1, v4}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/spdu/httpdns/ThreadType;

    .line 6
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSREQUEST_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    .line 7
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSREQUEST_NETWORKCHANGE"

    invoke-direct {v0, v1, v6}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NETWORKCHANGE:Lcom/spdu/httpdns/ThreadType;

    .line 9
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSFILE_READ"

    invoke-direct {v0, v1, v7}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

    .line 10
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "HTTPDNSFILE_WRITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    .line 12
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "SYSTEMDNSTEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->SYSTEMDNSTEST:Lcom/spdu/httpdns/ThreadType;

    .line 13
    new-instance v0, Lcom/spdu/httpdns/ThreadType;

    const-string/jumbo v1, "SYSTEMHTTPTEST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/spdu/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->SYSTEMHTTPTEST:Lcom/spdu/httpdns/ThreadType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/spdu/httpdns/ThreadType;

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/spdu/httpdns/ThreadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/spdu/httpdns/ThreadType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/spdu/httpdns/ThreadType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSREQUEST_NETWORKCHANGE:Lcom/spdu/httpdns/ThreadType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/spdu/httpdns/ThreadType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spdu/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/spdu/httpdns/ThreadType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spdu/httpdns/ThreadType;->SYSTEMDNSTEST:Lcom/spdu/httpdns/ThreadType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spdu/httpdns/ThreadType;->SYSTEMHTTPTEST:Lcom/spdu/httpdns/ThreadType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spdu/httpdns/ThreadType;->$VALUES:[Lcom/spdu/httpdns/ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spdu/httpdns/ThreadType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/spdu/httpdns/ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spdu/httpdns/ThreadType;

    return-object v0
.end method

.method public static values()[Lcom/spdu/httpdns/ThreadType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/spdu/httpdns/ThreadType;->$VALUES:[Lcom/spdu/httpdns/ThreadType;

    invoke-virtual {v0}, [Lcom/spdu/httpdns/ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spdu/httpdns/ThreadType;

    return-object v0
.end method
