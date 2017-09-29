.class public final enum Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENQUEUE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

.field public static final enum REUSE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

.field private static final synthetic a:[Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    const-string/jumbo v1, "ENQUEUE"

    invoke-direct {v0, v1, v2}, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    new-instance v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    const-string/jumbo v1, "REUSE"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->REUSE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    sget-object v1, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->ENQUEUE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->REUSE:Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->a:[Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;
    .locals 1

    const-class v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->a:[Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    invoke-virtual {v0}, [Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/googlecode/androidannotations/annotations/UiThread$Propagation;

    return-object v0
.end method
