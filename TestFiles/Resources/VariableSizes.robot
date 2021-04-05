*** Settings ***
Documentation       This is for checking all the places where we should update the seasonal promotion
Library             Selenium2Library
#Library             SeleniumLibrary
Library             ScreenCapLibrary
Library             Collections
Library             String
*** Variables ***
${SIZEPUFFYMATTRESSDEFAULTSIZE}                             Queen
${SIZEPUFFYLUXMATTRESSDEFAULTSIZE}                          Queen
${SIZEPUFFYROYALMATTRESSDEFAULTSIZE}                        Queen
${SIZEPUFFYFOUNDATIONDEFAULTSIZE}                           Queen
${SIZEPUFFYADJUSTABLEBASEDEFAULTSIZE}                       Split King
${SIZEPUFFYBEDFRAMEDEFAULTSIZE}                             Queen
${SIZEPUFFYCOMFORTERDEFAULTSIZE}                            Full/Queen
${SIZEPUFFYPILLOWDEFAULTSIZE}                               Standard
${SIZEPUFFYPILLOWDEFAULTCOLOR}                              White
${SIZEPUFFYBODYPILLOWDEFAULTSIZE}                           -----  #one size only
${SIZEPUFFYMATTRESSPADDEFAULTSIZE}                          Queen
${SIZEPuffyMattressProtectorDefaultSize}                    Queen
${SIZEPUFFYTOPPERDEFAULTSIZE}                               Queen
${SIZEPUFFYTOPPERDEFAULTFEEL}                               Firm
${SIZEPUFFYBLANKETDEFAULTSIZE}                              Medium
${SIZEPUFFYWEIGHTEDBLANKETDEFAULTSIZE}                      Queen
${SIZEPUFFYSHEETSDEFAULTCOLOR}                              Gray
${SIZEPUFFYSHEETSDEFAULTSIZE}                               Queen
${SIZEPUFFYDOGBEDDEFAULTSIZE}                               Small
${SIZEPUFFYRUGDEFAULTCOLOR}                                 Gray
${SIZEPUFFYRUGDEFAULTSIZE}                                  Medium
${SIZEPUFFYMATTRESSPDPSIZEORDER1}                           Twin
${SIZEPUFFYMATTRESSPDPSIZEORDER2}                           Twin XL
${SIZEPUFFYMATTRESSPDPSIZEORDER3}                           Full
${SIZEPUFFYMATTRESSPDPSIZEORDER4}                           Queen
${SIZEPUFFYMATTRESSPDPSIZEORDER5}                           King
${SIZEPUFFYMATTRESSPDPSIZEORDER6}                           Cal King
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER1}                        Twin
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER2}                        Twin XL
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER3}                        Full
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER4}                        Queen
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER5}                        King
${SIZEPUFFYLUXMATTRESSPDPSIZEORDER6}                        Cal King
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER1}                      Twin
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER2}                      Twin XL
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER3}                      Full
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER4}                      Queen
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER5}                      King
${SIZEPUFFYROYALMATTRESSPDPSIZEORDER6}                      Cal King
${SIZEPUFFYFOUNDATIONPDPSIZEORDER1}                         Twin
${SIZEPUFFYFOUNDATIONPDPSIZEORDER2}                         Twin XL
${SIZEPUFFYFOUNDATIONPDPSIZEORDER3}                         Full
${SIZEPUFFYFOUNDATIONPDPSIZEORDER4}                         Queen
${SIZEPUFFYFOUNDATIONPDPSIZEORDER5}                         King
${SIZEPUFFYFOUNDATIONPDPSIZEORDER6}                         Cal King
${SIZEPUFFYADJUSTABLEBASEPDPSIZEORDER1}                     Twin XL
${SIZEPUFFYADJUSTABLEBASEPDPSIZEORDER2}                     Full
${SIZEPUFFYADJUSTABLEBASEPDPSIZEORDER3}                     Queen
${SIZEPUFFYADJUSTABLEBASEPDPSIZEORDER4}                     Split King
${SIZEPUFFYBEDFRAMEPDPSIZEORDER1}                           Full
${SIZEPUFFYBEDFRAMEPDPSIZEORDER2}                           Queen
${SIZEPUFFYBEDFRAMEPDPSIZEORDER3}                           King
${SIZEPUFFYBEDFRAMEPDPSIZEORDER4}                           Cal King
${SIZEPUFFYCOMFORTERPDPSIZEORDER1}                          Twin/Twin XL
${SIZEPUFFYCOMFORTERPDPSIZEORDER2}                          Full/Queen
${SIZEPUFFYCOMFORTERPDPSIZEORDER3}                          King/Cal King
${SIZEPUFFYPILLOWPDPSIZEORDER1}                             Standard
${SIZEPUFFYPILLOWPDPSIZEORDER2}                             King
${SIZEPUFFYMATTRESSPADPDPSIZEORDER1}                        Twin
${SIZEPUFFYMATTRESSPADPDPSIZEORDER2}                        Twin XL
${SIZEPUFFYMATTRESSPADPDPSIZEORDER3}                        Full
${SIZEPUFFYMATTRESSPADPDPSIZEORDER4}                        Queen
${SIZEPUFFYMATTRESSPADPDPSIZEORDER5}                        King
${SIZEPUFFYMATTRESSPADPDPSIZEORDER6}                        Cal King
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER1}                  Twin
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER2}                  Twin XL
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER3}                  Full
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER4}                  Queen
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER5}                  King
${SIZEPUFFYMATTRESSPROTECTORPDPSIZEORDER6}                  Cal King
${SIZEPUFFYTOPPERPDPFEELORDER1}                             Firm
${SIZEPUFFYTOPPERPDPFEELORDER2}                             Soft
${SIZEPUFFYSHEETSPDPCOLORORDER1}                            Gray
${SIZEPUFFYSHEETSPDPCOLORORDER2}                            White
${SIZEPUFFYTOPPERPDPSIZEORDER1}                             Twin
${SIZEPUFFYTOPPERPDPSIZEORDER2}                             Twin XL
${SIZEPUFFYTOPPERPDPSIZEORDER3}                             Full
${SIZEPUFFYTOPPERPDPSIZEORDER4}                             Queen
${SIZEPUFFYTOPPERPDPSIZEORDER5}                             King
${SIZEPUFFYTOPPERPDPSIZEORDER6}                             Cal King
${SIZEPUFFYSHEETSPDPSIZEORDER1}                             Twin
${SIZEPUFFYSHEETSPDPSIZEORDER2}                             Twin XL
${SIZEPUFFYSHEETSPDPSIZEORDER3}                             Full
${SIZEPUFFYSHEETSPDPSIZEORDER4}                             Queen
${SIZEPUFFYSHEETSPDPSIZEORDER5}                             King
${SIZEPUFFYSHEETSPDPSIZEORDER6}                             Cal King
${SIZEPUFFYBLANKETPDPSIZEORDER1}                            Small
${SIZEPUFFYBLANKETPDPSIZEORDER2}                            Medium
${SIZEPUFFYBLANKETPDPSIZEORDER3}                            Large
${SIZEPUFFYDOGBEDPDPSIZEORDER1}                             Small
${SIZEPUFFYDOGBEDPDPSIZEORDER2}                             Medium
${SIZEPUFFYDOGBEDPDPSIZEORDER3}                             Large
${SIZEPUFFYRUGPDPSIZEORDER1}                                Medium
${SIZEPUFFYRUGPDPSIZEORDER2}                                Large
${SIZEPUFFYWEIGHTEDBLANKETPDPSIZEORDER1}                    Twin
${SIZEPUFFYWEIGHTEDBLANKETPDPSIZEORDER2}                    Queen
${SIZEPUFFYWEIGHTEDBLANKETPDPSIZEORDER3}                    King