.class public Lorg/luaj/vm2/Print;
.super Lorg/luaj/vm2/Lua;


# static fields
.field public static final OPNAMES:[Ljava/lang/String;

.field public static ps:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MOVE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "LOADK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "LOADKX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "LOADBOOL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "LOADNIL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "GETUPVAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "GETTABUP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "GETTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SETTABUP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SETUPVAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "SETTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "NEWTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SELF"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "ADD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SUB"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "MUL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "DIV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "MOD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "POW"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "UNM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "NOT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "LEN"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "CONCAT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "JMP"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "EQ"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "LE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "TEST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "TESTSET"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "TAILCALL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "RETURN"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "FORLOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "FORPREP"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "TFORCALL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "TFORLOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "SETLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "CLOSURE"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "VARARG"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "EXTRAARG"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/Print;->OPNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Lua;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    rsub-int/lit8 v0, v0, 0x32

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    sget-object v1, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_0
.end method

.method public static print(Lorg/luaj/vm2/Prototype;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printFunction(Lorg/luaj/vm2/Prototype;Z)V

    return-void
.end method

.method public static printCode(Lorg/luaj/vm2/Prototype;)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printOpCode(Lorg/luaj/vm2/Prototype;I)V

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V
    .locals 1

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    aget-object v0, v0, p2

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printValue(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method static printConstants(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v0

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "constants ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ") for Proto:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/luaj/vm2/Print;->printValue(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaValue;)V

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printFunction(Lorg/luaj/vm2/Prototype;Z)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v1, v0

    invoke-static {p0}, Lorg/luaj/vm2/Print;->printHeader(Lorg/luaj/vm2/Prototype;)V

    invoke-static {p0}, Lorg/luaj/vm2/Print;->printCode(Lorg/luaj/vm2/Prototype;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/luaj/vm2/Print;->printConstants(Lorg/luaj/vm2/Prototype;)V

    invoke-static {p0}, Lorg/luaj/vm2/Print;->printLocals(Lorg/luaj/vm2/Prototype;)V

    invoke-static {p0}, Lorg/luaj/vm2/Print;->printUpValues(Lorg/luaj/vm2/Prototype;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lorg/luaj/vm2/Print;->printFunction(Lorg/luaj/vm2/Prototype;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static printHeader(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/luaj/vm2/Prototype;->linedefined:I

    if-nez v1, :cond_3

    const-string/jumbo v1, "main"

    :goto_1
    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "\n%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, " <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/luaj/vm2/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/luaj/vm2/Prototype;->lastlinedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " instructions, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/Prototype;->code:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " bytes at Proto)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/luaj/vm2/Prototype;->numparams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " param, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/luaj/vm2/Prototype;->maxstacksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " slot, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " upvalue, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " local, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->k:[Lorg/luaj/vm2/LuaValue;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " constant, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " function\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "\u001bLua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "(bstring)"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "(string)"

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "function"

    goto/16 :goto_1
.end method

.method static printLocals(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    array-length v1, v0

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "locals ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ") for Proto:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/luaj/vm2/LocVars;->varname:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/luaj/vm2/LocVars;->startpc:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/Prototype;->locvars:[Lorg/luaj/vm2/LocVars;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/luaj/vm2/LocVars;->endpc:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printOpCode(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V
    .locals 10

    iget-object v3, p1, Lorg/luaj/vm2/Prototype;->code:[I

    aget v0, v3, p2

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GET_OPCODE(I)I

    move-result v4

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GETARG_A(I)I

    move-result v5

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GETARG_B(I)I

    move-result v1

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GETARG_C(I)I

    move-result v2

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GETARG_Bx(I)I

    move-result v6

    invoke-static {v0}, Lorg/luaj/vm2/Print;->GETARG_sBx(I)I

    move-result v7

    if-lez p2, :cond_2

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    array-length v0, v0

    if-ge p2, v0, :cond_2

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->lineinfo:[I

    aget v0, v0, p2

    :goto_0
    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v9, "  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, p2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-lez v0, :cond_3

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v9, "["

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, "]  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v8, Lorg/luaj/vm2/Print;->OPNAMES:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, "  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/luaj/vm2/Print;->getOpMode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_2
    packed-switch v4, :pswitch_data_1

    :cond_1
    :goto_3
    :pswitch_0
    return-void

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "[-]  "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(I)V

    invoke-static {v4}, Lorg/luaj/vm2/Print;->getBMode(I)I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    :goto_4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    invoke-static {v4}, Lorg/luaj/vm2/Print;->getCMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x1

    :goto_5
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :pswitch_2
    invoke-static {v4}, Lorg/luaj/vm2/Print;->getBMode(I)I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    rsub-int/lit8 v8, v6, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0x17

    if-ne v4, v0, :cond_8

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p0, p1, v6}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    goto/16 :goto_3

    :pswitch_5
    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printUpvalue(Ljava/io/PrintStream;Lorg/luaj/vm2/Upvaldesc;)V

    goto/16 :goto_3

    :pswitch_6
    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printUpvalue(Ljava/io/PrintStream;Lorg/luaj/vm2/Upvaldesc;)V

    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v2}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v0, v0, v5

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printUpvalue(Ljava/io/PrintStream;Lorg/luaj/vm2/Upvaldesc;)V

    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    :goto_6
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v2}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    goto/16 :goto_3

    :pswitch_9
    invoke-static {v1}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_c
    const-string/jumbo v0, "  ; "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v1}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    :goto_7
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/luaj/vm2/Print;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v2}, Lorg/luaj/vm2/Print;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/luaj/vm2/Print;->printConstant(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const-string/jumbo v0, "-"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "  ; to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int v1, v7, p2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "  ; "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lorg/luaj/vm2/Prototype;->p:[Lorg/luaj/vm2/Prototype;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    if-nez v2, :cond_f

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "  ; "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x1

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "  ; "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_d
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "  ; is_vararg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lorg/luaj/vm2/Prototype;->is_vararg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public static printOpCode(Lorg/luaj/vm2/Prototype;I)V
    .locals 1

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lorg/luaj/vm2/Print;->printOpCode(Ljava/io/PrintStream;Lorg/luaj/vm2/Prototype;I)V

    return-void
.end method

.method public static printState(Lorg/luaj/vm2/LuaClosure;I[Lorg/luaj/vm2/LuaValue;ILorg/luaj/vm2/Varargs;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-static {v3, p1}, Lorg/luaj/vm2/Print;->printOpCode(Lorg/luaj/vm2/Prototype;I)V

    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    sput-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/Print;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    aget-object v2, p2, v0

    if-nez v2, :cond_1

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v0, 0x1

    if-ne v2, p3, :cond_0

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    :cond_0
    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v2

    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v4

    const/16 v5, 0x30

    if-ge v4, v5, :cond_2

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v2, v1, v5}, Lorg/luaj/vm2/LuaString;->substring(II)Lorg/luaj/vm2/LuaString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/luaj/vm2/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "...+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaString;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, "b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :pswitch_2
    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0, p4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static printString(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaString;)V
    .locals 6

    const/16 v5, 0x5c

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(C)V

    const/4 v0, 0x0

    iget v1, p1, Lorg/luaj/vm2/LuaString;->m_length:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v3, p1, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq v2, v5, :cond_0

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(C)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(C)V

    and-int/lit16 v2, v2, 0x4e7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "\\\\"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "\\a"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "\\b"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_6
    const-string/jumbo v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_8
    const-string/jumbo v2, "\\v"

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->print(C)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_5
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_4
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method static printUpValues(Lorg/luaj/vm2/Prototype;)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    array-length v1, v0

    sget-object v0, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "upvalues ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ") for Proto:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lorg/luaj/vm2/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/luaj/vm2/Prototype;->upvalues:[Lorg/luaj/vm2/Upvaldesc;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static printUpvalue(Ljava/io/PrintStream;Lorg/luaj/vm2/Upvaldesc;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-short v1, p1, Lorg/luaj/vm2/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lorg/luaj/vm2/Upvaldesc;->name:Lorg/luaj/vm2/LuaString;

    invoke-static {p0, v0}, Lorg/luaj/vm2/Print;->printValue(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method static printValue(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Lorg/luaj/vm2/LuaString;

    invoke-static {p0, p1}, Lorg/luaj/vm2/Print;->printString(Ljava/io/PrintStream;Lorg/luaj/vm2/LuaString;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
