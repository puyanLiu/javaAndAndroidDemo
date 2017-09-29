.class final enum Lanetwork/channel/anet/c;
.super Ljava/lang/Enum;
.source "ACallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/anet/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lanetwork/channel/anet/c;

.field public static final enum b:Lanetwork/channel/anet/c;

.field public static final enum c:Lanetwork/channel/anet/c;

.field private static final synthetic d:[Lanetwork/channel/anet/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    new-instance v0, Lanetwork/channel/anet/c;

    const-string/jumbo v1, "finsh"

    invoke-direct {v0, v1, v2}, Lanetwork/channel/anet/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/c;->a:Lanetwork/channel/anet/c;

    new-instance v0, Lanetwork/channel/anet/c;

    const-string/jumbo v1, "degrade"

    invoke-direct {v0, v1, v3}, Lanetwork/channel/anet/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    new-instance v0, Lanetwork/channel/anet/c;

    const-string/jumbo v1, "retry"

    invoke-direct {v0, v1, v4}, Lanetwork/channel/anet/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    .line 350
    const/4 v0, 0x3

    new-array v0, v0, [Lanetwork/channel/anet/c;

    sget-object v1, Lanetwork/channel/anet/c;->a:Lanetwork/channel/anet/c;

    aput-object v1, v0, v2

    sget-object v1, Lanetwork/channel/anet/c;->b:Lanetwork/channel/anet/c;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/anet/c;->c:Lanetwork/channel/anet/c;

    aput-object v1, v0, v4

    sput-object v0, Lanetwork/channel/anet/c;->d:[Lanetwork/channel/anet/c;

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
    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/anet/c;
    .locals 1

    .prologue
    .line 350
    const-class v0, Lanetwork/channel/anet/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/anet/c;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/anet/c;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lanetwork/channel/anet/c;->d:[Lanetwork/channel/anet/c;

    invoke-virtual {v0}, [Lanetwork/channel/anet/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/anet/c;

    return-object v0
.end method
