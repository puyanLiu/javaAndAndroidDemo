.class public final enum Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jacoco/core/runtime/AgentOptions$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum none:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpclient:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string/jumbo v1, "file"

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string/jumbo v1, "tcpserver"

    invoke-direct {v0, v1, v3}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string/jumbo v1, "tcpclient"

    invoke-direct {v0, v1, v4}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v5}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->a:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 1

    const-class v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-object v0
.end method

.method public static values()[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 1

    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->a:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v0}, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-object v0
.end method
