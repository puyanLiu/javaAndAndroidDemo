.class Lorg/luaj/vm2/compiler/InstructionPtr;
.super Ljava/lang/Object;


# instance fields
.field final code:[I

.field final idx:I


# direct methods
.method constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->code:[I

    iput p2, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->idx:I

    return-void
.end method


# virtual methods
.method get()I
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->code:[I

    iget v1, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->idx:I

    aget v0, v0, v1

    return v0
.end method

.method set(I)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->code:[I

    iget v1, p0, Lorg/luaj/vm2/compiler/InstructionPtr;->idx:I

    aput p1, v0, v1

    return-void
.end method
