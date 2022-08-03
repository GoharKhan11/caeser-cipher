def caeser_cipher (initial_string, shift_value)
    # str, int -> str
    # Takes in a string and applies the caeser cipher
    # using shift_value as the amount to shift each
    # letter by.
    # Note: Preserves capitalization
    # --------------------------------------------------------

    # Creates an array from the characters of the input string
    string_array = initial_string.split("")
    # Creates new array with all values in string_array as numbers
    number_array = string_array.map { |item| item.ord }
    # Creates shifted array (to store all shifted values)
    shifted_array = Array.new()

    # Goes through each number in number_array
    number_array.each do |item|
        # Handle lower case letters (A = 67, Z = 90)
        if item >= 65 && item <= 90
            # Insert shifted lower case letter to shifted_array
            shifted_array.push( capital_shift(item, shift_value) )
        # handles upper case letters (A = 97, Z = 122)
        elsif item >= 97 && item <= 122
            # Insert shifted upper case letter to shifted_array
            shifted_array.push( lowercase_shift(item, shift_value) )
        else
            # Insert all other items unchanged
            shifted_array.push( item )
        end
    end
    # Convert shifted items back into characters in new array
    result_array = shifted_array.map { |number_items| number_items.chr }
    # Creates a string from result_array
    result_string = result_array.join("")
    return result_string
end


def capital_shift (item, shift_value)
    # int, int -> int
    # Takes a number representing an upper case letter and shifts it down
    # for the caeser cipher looping from A back to Z
    # Note: to be used in caeser_cipher
    # ---------------------------------------------------------------------

    # Creates initial result by simply shifting the given number down
    result = item - shift_value
    # When value is under 65 (A = 65) adds 26 to loop back to Z (Z = 90)
    # Repeat till value between 65 and 90 (inclusive)
    while result < 65
        result += 26
    end
    return result
end


def lowercase_shift (item, shift_value)
    # int, int -> int
    # Takes a number representing an lower case letter and shifts it down
    # for the caeser cipher looping from a back to z
    # Note: to be used in caeser_cipher
    # ---------------------------------------------------------------------

    # Creates initial result by simply shifting the given number down
    result = item - shift_value
    # When value is under 97 (a = 97) adds 26 to loop back to z (z = 122)
    # Repeat till value between 97 and 122 (inclusive)
    while result < 97
        result += 26
    end
    return result
end
