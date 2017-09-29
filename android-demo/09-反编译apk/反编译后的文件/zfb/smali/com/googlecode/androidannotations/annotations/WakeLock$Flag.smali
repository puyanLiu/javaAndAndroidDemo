.class public final enum Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACQUIRE_CAUSES_WAKEUP:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

.field public static final enum ON_AFTER_RELEASE:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

.field private static final synthetic a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    const-string/jumbo v1, "ACQUIRE_CAUSES_WAKEUP"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->ACQUIRE_CAUSES_WAKEUP:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    const-string/jumbo v1, "ON_AFTER_RELEASE"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->ON_AFTER_RELEASE:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->ACQUIRE_CAUSES_WAKEUP:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->ON_AFTER_RELEASE:Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;
    .locals 1

    const-class v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->a:[Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    invoke-virtual {v0}, [Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/androidannotations/annotations/WakeLock$Flag;

    return-object v0
.end method
