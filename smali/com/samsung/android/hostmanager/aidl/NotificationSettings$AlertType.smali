.class public final enum Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;
.super Ljava/lang/Enum;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hostmanager/aidl/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

.field public static final enum FULL_SCREEN_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

.field public static final enum MINI_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

.field public static final enum NO_ALERT:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    const-string v1, "FULL_SCREEN_POPUP"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->FULL_SCREEN_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    .line 21
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    const-string v1, "MINI_POPUP"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->MINI_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    .line 22
    new-instance v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    const-string v1, "NO_ALERT"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->NO_ALERT:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    sget-object v1, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->FULL_SCREEN_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->MINI_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->NO_ALERT:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->$VALUES:[Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->value:I

    .line 28
    return-void
.end method

.method public static forValue(I)Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 43
    sget-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->FULL_SCREEN_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->FULL_SCREEN_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->MINI_POPUP:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->NO_ALERT:Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->$VALUES:[Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    invoke-virtual {v0}, [Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/hostmanager/aidl/NotificationSettings$AlertType;->value:I

    return v0
.end method
